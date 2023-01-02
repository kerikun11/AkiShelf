/**
    @file     ota.h
    @author   Ryotaro Onuki (Github: kerikun11)
    @date     2018.03.10
*/
#pragma once

#include <Arduino.h>
#include <ArduinoOTA.h>
#include <esp32-hal-log.h>

#define OTA_TASK_PRIORITY    0
#define OTA_TASK_STACK_SIZE  2048

class OTA {
  public:
    OTA() {}
    void begin(const char* hostname = NULL, const char* password = NULL) {
      //      ArduinoOTA.setPort(3232);
      if (hostname != NULL)ArduinoOTA.setHostname(hostname);
      if (password != NULL)ArduinoOTA.setPassword(password);

      // Password can be set with it's md5 value as well
      // MD5(admin) = 21232f297a57a5a743894a0e4a801fc3
      // ArduinoOTA.setPasswordHash("21232f297a57a5a743894a0e4a801fc3");

      ArduinoOTA
      .onStart([]() {
        String type;
        if (ArduinoOTA.getCommand() == U_FLASH)
          type = "sketch";
        else // U_SPIFFS
          type = "filesystem";

        // NOTE: if updating SPIFFS this would be the place to unmount SPIFFS using SPIFFS.end()
        log_i("Start updating %s", type);
      })
      .onEnd([]() {
        log_i("End updating");
      })
      .onProgress([](unsigned int progress, unsigned int total) {
        log_d("Progress: %u%%", (progress / (total / 100)));
      })
      .onError([](ota_error_t error) {
        switch (error) {
          case OTA_AUTH_ERROR:    log_e("[%u]: Auth Failed", error);    break;
          case OTA_BEGIN_ERROR:   log_e("[%u]: Begin Failed", error);   break;
          case OTA_CONNECT_ERROR: log_e("[%u]: Connect Failed", error); break;
          case OTA_RECEIVE_ERROR: log_e("[%u]: Receive Failed", error); break;
          case OTA_END_ERROR:     log_e("[%u]: End Failed", error);     break;
          default:                log_e("[%u]: Others", error);         break;
        }
      });

      ArduinoOTA.begin();

      xTaskCreate([](void* obj) {
        static_cast<OTA*>(obj)->task();
      }, "OTA", OTA_TASK_STACK_SIZE, this, OTA_TASK_PRIORITY, NULL);
    }

  private:
    void task() {
      portTickType xLastWakeTime = xTaskGetTickCount();
      while (1) {
        vTaskDelayUntil(&xLastWakeTime, 1 / portTICK_RATE_MS);
        ArduinoOTA.handle();
      }
    }
};

