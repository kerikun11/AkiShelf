#pragma once

#include <Arduino.h>
#include <functional>

#define AUTOSLEEP_TASK_PRIORITY    1
#define AUTOSLEEP_TASK_STACK_SIZE  4096

class AutoSleep {
  public:
    AutoSleep() {
    }
    bool begin() {
      xTaskCreate([](void* obj) {
        static_cast<AutoSleep*>(obj)->task();
      }, "AutoSleep", AUTOSLEEP_TASK_STACK_SIZE, this, AUTOSLEEP_TASK_PRIORITY, &pxCreatedTask);
      return true;
    }
  private:
    TaskHandle_t pxCreatedTask;
    uint32_t sleep_ms;

    void task() {
      while (1) {
      }
    }
};

