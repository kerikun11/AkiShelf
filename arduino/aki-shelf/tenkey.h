#pragma once

#include <Arduino.h>

#define TENKEY_TASK_PRIORITY  1
#define TENKEY_STACK_SIZE     1024
#define TENKEY_QUEUE_SIZE     4

/** @class Tenkey
  @brief keymap:
    '7' '8' '9'
    '4' '5' '6'
    '1' '2' '3'
    'L' '0' 'R'
*/
class Tenkey {
  public:
    Tenkey(std::array<int8_t, 4> pins_row, std::array<int8_t, 3> pins_col): pins_row(pins_row), pins_col(pins_col) {
      for (auto p : pins_row) pinMode(p, INPUT_PULLUP);
      for (auto p : pins_col) pinMode(p, INPUT_PULLUP);
      for (int r = 0; r < 4; r++)
        for (int c = 0; c < 3; c++)
          counter[r][c] = 0;
      list = xQueueCreate(TENKEY_QUEUE_SIZE, sizeof(char));
      xTaskCreate([](void* obj) {
        static_cast<Tenkey*>(obj)->task();
      }, "Tenkey", TENKEY_STACK_SIZE, this, TENKEY_TASK_PRIORITY, NULL);
    }
    char read(portTickType xTicksToWait = portMAX_DELAY) {
      char c;
      xQueueReceive(list, &c, xTicksToWait);
      return c;
    }
  private:
    std::array<int8_t, 4> pins_row;
    std::array<int8_t, 3> pins_col;
    uint32_t counter[4][3];
    xQueueHandle list;

    void sampling() {
      for (int col = 0; col < 3; col++) {
        pinMode(pins_col[col], OUTPUT);
        digitalWrite(pins_col[col], LOW);
        for (int row = 0; row < 4; row++) {
          if (digitalRead(pins_row[row]) == LOW) {
            counter[row][col]++;
          } else {
            if (counter[row][col] >= 2) {
              int n = col + 3 * row;
              char c;
              switch (n) {
                case 0:
                  c = 'L';
                  break;
                case 1:
                  c = '0';
                  break;
                case 2:
                  c = 'R';
                  break;
                default:
                  c = '0' + n - 2;
                  break;
              }
              xQueueSendToBack(list, &c, 0);
            }
            counter[row][col] = 0;
          }
        }
        pinMode(pins_col[col], INPUT_PULLUP);
      }
    }
    void task() {
      portTickType xLastWakeTime = xTaskGetTickCount();
      while (1) {
        vTaskDelayUntil(&xLastWakeTime, 10 / portTICK_RATE_MS);
        sampling() ;
      }
    }
};

