#pragma once

#include <WiFi.h>

#define SERVER_HOSTNAME   "akizukidenshi.com"
#define SERVER_PORT       80

class AkiShelf {
  public:
    AkiShelf() {}
    enum STATUS_CODE {
      SUCCESSFUL,
      CONNECTION_FAILED,
      RESPONSE_TIMEOUT,
      INVALID_FORMAT,
      NOT_FOUND,
    };
    static String parts2code(const char alphabet, const int number) {
      char str[16];
      snprintf(str, 16, "%c-%05d", alphabet, number);
      return str;
    }
    int getQty() {
      return qty;
    }
    String getShelf() {
      return shelf;
    }
    enum STATUS_CODE get(const String code, const uint32_t timeout_ms = 3000) {
      if (code.length() != 7) {
        log_e("Invalid Code Format: %s", code.c_str());
        return INVALID_FORMAT;
      }
      if (!client.connect(SERVER_HOSTNAME, SERVER_PORT)) {
        log_e("Failed to connect to server: %s", SERVER_HOSTNAME);
        return CONNECTION_FAILED;
      }
      log_i("Connected to server: %s", SERVER_HOSTNAME);
      String request = (String)"GET /catalog/goods/warehouseinfo.aspx?goods=" + code + " HTTP/1.1\r\n"
                       + "Host: " + SERVER_HOSTNAME + "\r\n"
                       + "Connection: close\r\n\r\n";
      client.print(request);
      log_d("Request: %s", request.c_str());
      uint32_t timestamp = millis();
      while (true) {
        if (client.available()) break;
        if (millis() - timestamp > timeout_ms) {
          log_e("Timeout: Reading Server");
          return RESPONSE_TIMEOUT;
        }
        delay(10);
      }
      delay(100);
      client.setTimeout(10);
      if (client.available() < 500) {
        log_e("No such content!");
        log_d("Response:\n%s", client.readString().c_str());
        return NOT_FOUND;
      }
      while (client.available()) {
        String s = client.readStringUntil('\n');
        if (s.indexOf("storeqty_ ") != -1) break; // 八潮店
      }
      while (client.available()) {
        String s = client.readStringUntil('\n');
        if (s.indexOf("storeqty_ ") != -1) break;
      }
      parseQty(client.readStringUntil('\n'));
      while (client.available()) {
        String s = client.readStringUntil('\n');
        if (s.indexOf("storehouse_name") != -1) break;
      }
      parseShelf(client.readStringUntil('>'));
      client.flush();
      client.stop();
      return SUCCESSFUL;
    }
  private:
    WiFiClient client;
    int qty;
    String shelf;

    static String extract(String target, String head, String tail) {
      return target.substring(target.indexOf(head) + head.length(), target.indexOf(tail, target.indexOf(head) + head.length()));
    }
    bool parseShelf(String s) {
      s.trim();
      if (s.indexOf("span") != -1) {
        shelf = "Backyard";
        return true;
      }
      String ret;
      s.replace("\x94\x84\x8f\xea", "");  // 売場(Shift_JIS)
      s.replace(" ", "");
      s.replace("\r", "");
      s.replace("\n", "");
      if (s[1] == 'F')ret += s.substring(0, 4);
      if (s.indexOf("\x8f\xe3\x92\x69") != -1)ret += "up"; // 上段(Shift_JIS)
      if (s.indexOf("\x89\xba\x92\x69") != -1)ret += "dowm"; // 下段(Shift_JIS)
      int index = s.indexOf("\x92\x69\x96\xda"); // 段目(Shift_JIS)
      if (index != -1) ret += (String)"-" + s.substring(index - 1, index);
      shelf = ret;
      return true;
    }
    bool parseQty(String s) {
      s.trim();
      qty = s.toInt();
      log_i("Quantity: %d", qty);
      return true;
    }
};

