/**
    @file     LED.h
    @author   Ryotaro Onuki (Github: kerikun11)
    @date     2017.12.10
*/
#pragma once

#include <Arduino.h>
#include <esp32-hal-log.h>

#define LED_TASK_PRIORITY    1
#define LED_TASK_STACK_SIZE  2048
#define LED_QUEUE_SIZE       5

class LED {
  public:
    LED(int pin_red, int pin_green, int pin_blue): pin_red(pin_red), pin_green(pin_green), pin_blue(pin_blue) {
      playList = xQueueCreate(LED_QUEUE_SIZE, sizeof(struct Action));
      pinMode(pin_red, OUTPUT);
      pinMode(pin_green, OUTPUT);
      pinMode(pin_blue, OUTPUT);
      setBackground(OFF);
      xTaskCreate([](void* obj) {
        static_cast<LED*>(obj)->task();
      }, "LED", LED_TASK_STACK_SIZE, this, LED_TASK_PRIORITY, NULL);
    }
    enum Color { RED, GREEN, BLUE, YELLOW, CYAN, MAGENTA, WHITE, OFF };
    void setBackground(const enum Color color) {
      struct Action act;
      act.color = color;
      act.type = Action::Base;
      xQueueSendToBack(playList, &act, 0);
    }
    void blink(const enum Color color, int time_ms = 200) {
      struct Action act;
      act.color = color;
      act.type = Action::Temp;
      act.blink_time_ms = time_ms;
      xQueueSendToBack(playList, &act, 0);
    }
  private:
    int pin_red, pin_green, pin_blue;
    xQueueHandle playList;
    Color base;
    struct Action {
      enum Color color;
      enum Type {
        Base,
        Temp,
      } type;
      int blink_time_ms;
    };

    void task() {
      while (1) {
        Action act;
        xQueueReceive(playList, &act, portMAX_DELAY);
        switch (act.type) {
          case Action::Base:
            base = act.color;
            break;
          case Action::Temp:
            set(act.color);
            vTaskDelay(act.blink_time_ms / portTICK_RATE_MS);
            break;
        }
        set(base);
      }
    }
    void set(enum Color color) {
      switch (color) {
        case RED:     drive(1, 0, 0); break;
        case GREEN:   drive(0, 1, 0); break;
        case BLUE:    drive(0, 0, 1); break;
        case YELLOW:  drive(1, 1, 0); break;
        case CYAN:    drive(0, 1, 1); break;
        case MAGENTA: drive(1, 0, 1); break;
        case WHITE:   drive(1, 1, 1); break;
        case OFF:
        default:      drive(0, 0, 0); break;
      }
    }
    void drive(int r, int g, int b) {
      digitalWrite(pin_red, !r);
      digitalWrite(pin_green, !g);
      digitalWrite(pin_blue, !b);
    }
};

