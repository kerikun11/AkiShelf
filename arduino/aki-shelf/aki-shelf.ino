/**
   @file    aki-shelf.ino
   @author  KERI (Github:kerikun11)
   @date    2018.02.22
*/
#include <WiFi.h>
#include <Wire.h>
#include <driver/rtc_io.h>
#include "config.h"
#include "ST7032.h"
#include "Tenkey.h"
#include "buzzer.h"
#include "button.h"
#include "AkiShelf.h"
#include "Thread.h"

Buzzer bz(BUZZER_PIN, LEDC_BUZZER_CH);
Button btn(BUTTON_PIN);
ST7032 lcd;
Tenkey key(PINS_TENKEY_ROW, PINS_TENKEY_COL);
AkiShelf aki;

xSemaphoreHandle xSleepSemaphore = NULL;

void setup() {
  Serial.begin(115200);
  log_i("\n************************ Aki-Shelf ************************");
  log_d("millis(): %d", millis());
  bz.begin();
  // 前回接続したWiFiに自動接続
  WiFi.begin();

  esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_PERIPH, ESP_PD_OPTION_OFF);
  Wire.begin(SDA, SCL);
  lcd.begin(8, 2);
  lcd.noAutoscroll();
  lcd.setContrast(30);
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Akizuki");
  lcd.setCursor(0, 1);
  lcd.print("Shelf #");

  key.read();
  bz.play(Buzzer::SELECT);

  vSemaphoreCreateBinary(xSleepSemaphore);
  xTaskCreate(smartConfig_task, "smartConfig", 4096, NULL, 1, NULL);
  xTaskCreate(sleep_task, "sleep", 4096, NULL, 1, NULL);

  log_d("millis(): %d", millis());
  xSemaphoreGive(xSleepSemaphore);
}

String getCodeFromKey() {
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Code?");
  lcd.setCursor(0, 1);
  lcd.print("X-XXXXX");
  const char code_alphabet[] = "MKPBRSICT";
  String code;
  char alphabet = '_';
  int number = 0;
  int state = 0;
  while (1) {
    char c = key.read();
    bz.play(Buzzer::SELECT);
    xSemaphoreGive(xSleepSemaphore);
    switch (state) {
      case 0:
        if (c >= '1' && c <= '0' + strlen(code_alphabet)) {
          alphabet = code_alphabet[c - '0' - 1];
          state = 1;
        }
        break;
      default:
        if (c == 'L') {
          if (number == 0) {
            alphabet = '_';
            state = 0;
          }
          number /= 10;
        } else if (c == 'R') {
          return code;
        } else {
          number *= 10;
          number += c - '0';
          number %= 100000;
        }
        break;
    }
    code = AkiShelf::parts2code(alphabet, number);
    lcd.setCursor(0, 1);
    lcd.print(code);
  }
}

void loop() {
  String code = getCodeFromKey();
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print("Please");
  lcd.setCursor(0, 1);
  lcd.print("wait...");
  if (WiFi.waitForConnectResult() != WL_CONNECTED) {
    log_e("wifi connection failed :(");
    lcd.clear();
    lcd.setCursor(0, 0);
    lcd.print("WiFi Con");
    lcd.setCursor(0, 1);
    lcd.print("Failed:(");
    log_i("Tenkey: %c\n", key.read());
    return;
  }
  enum AkiShelf::STATUS_CODE status = aki.get(code);
  String lcd_str[2];
  switch (status) {
    case AkiShelf::SUCCESSFUL:
      bz.play(Buzzer::SUCCESSFUL);
      lcd_str[0] = (String)"Qty:" + String(aki.getQty(), DEC);
      lcd_str[1] = aki.getShelf();
      break;
    case AkiShelf::CONNECTION_FAILED:
      bz.play(Buzzer::ERROR);
      lcd_str[0] = "Connect";
      lcd_str[1] = "Failed!";
      break;
    case AkiShelf::RESPONSE_TIMEOUT:
      bz.play(Buzzer::ERROR);
      lcd_str[0] = "Response";
      lcd_str[1] = "Timeout!";
      break;
    case AkiShelf::INVALID_FORMAT:
      bz.play(Buzzer::ERROR);
      lcd_str[0] = "Format";
      lcd_str[1] = "Error!";
      break;
    case AkiShelf::NOT_FOUND:
      bz.play(Buzzer::ERROR);
      lcd_str[0] = "Not";
      lcd_str[1] = "Found!";
      break;
  }
  lcd.clear();
  lcd.setCursor(0, 0);
  lcd.print(lcd_str[0]);
  lcd.setCursor(0, 1);
  lcd.print(lcd_str[1]);
  log_i("Tenkey: %c\n", key.read());
  bz.play(Buzzer::SELECT);
}

/**
   @brief 一定時間操作がなければ自動的にスリープ状態にするタスク
   WDTのように，
   xSemaphoreGive(xSleepSemaphore);
   が一定時間よばれなければ，自動的にスリープ状態へ
*/
void sleep_task(void *arg) {
  while (xSemaphoreTake(xSleepSemaphore, AUTO_SLEEP_TIME_S * 1000 / portTICK_RATE_MS) == pdTRUE) {}
  bz.play(Buzzer::CANCEL);
  delay(200);
  rtc_gpio_pulldown_en(GPIO_NUM_25);
  rtc_gpio_pulldown_en(GPIO_NUM_26);
  rtc_gpio_pulldown_en(GPIO_NUM_27);
  esp_sleep_pd_config(ESP_PD_DOMAIN_RTC_PERIPH, ESP_PD_OPTION_ON);
  esp_sleep_enable_ext1_wakeup(0x7 << 25, ESP_EXT1_WAKEUP_ANY_HIGH);
  log_i("Going to sleep now");
  esp_deep_sleep_start();
}

/** smartConfig処理をするタスクの関数
  @brief FreeRTOSにより実行，ボタンが押されたらsmartConfig処理を実行
*/
void smartConfig_task(void *arg) {
  portTickType xLastWakeTime = xTaskGetTickCount();
  while (1) {
    vTaskDelayUntil(&xLastWakeTime, 1 / portTICK_RATE_MS);
    if (btn.pressed) {
      btn.flags = 0;
      bz.play(Buzzer::CONFIRM);
      log_i("WiFi.beginSmartConfig();");
      lcd.clear();
      lcd.setCursor(0, 0);
      lcd.print("Smart");
      lcd.setCursor(0, 1);
      lcd.print("Config...");
      WiFi.beginSmartConfig();
      while (!WiFi.smartConfigDone()) {
        delay(100);
      }
    }
  }
}

