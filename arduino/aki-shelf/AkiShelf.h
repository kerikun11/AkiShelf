#pragma once

#include <WiFi.h>
#include <HTTPClient.h>

#define SERVER_HOSTNAME "akizukidenshi.com"
#define SERVER_PORT 80

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
    HTTPClient http;
    if (!http.begin("https://akizukidenshi.com/catalog/goods/warehouseinfo.aspx?goods=" + code, (const char*)NULL)) {
      log_e("http.begin failed");
      return CONNECTION_FAILED;
    }
    int httpCode = http.GET();
    if (httpCode != 200) {
      log_e("HTTP code: %d", httpCode);
      return RESPONSE_TIMEOUT;
    }
    WiFiClient& client = http.getStream();
    if (client.available() < 500) {
      log_w("code %s not found", code.c_str());
      log_d("HTTP Response: '%s'", client.readString().c_str());
      return NOT_FOUND;
    }
    String s;
    while (client.available()) {
      s = client.readStringUntil('\n');
      if (s.indexOf("\x8f\x48\x97\x74\x8c\xb4\x93\x58") != -1) break;  // 秋葉原店
    }
    while (client.available()) {
      s = client.readStringUntil('\n');
      if (s.indexOf("storeqty_") != -1) break;  // 在庫数
    }
    s = client.readStringUntil('<');
    parseQty(s.substring(0, s.length() - 1));
    while (client.available()) {
      s = client.readStringUntil('\n');
      if (s.indexOf("storehouse_name") != -1) break;  // 売り場
    }
    s = client.readStringUntil('<');
    parseShelf(s.substring(0, s.length() - 1));
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
    log_i("s: %s", s.c_str());
    if (s.isEmpty()) {
      shelf = "Backyard";
      return true;
    }
    String ret;
    s.replace("\x94\x84\x8f\xea", "");  // 売場(Shift_JIS)
    s.replace(" ", "");
    s.replace("\r", "");
    s.replace("\n", "");
    if (s[1] == 'F') ret += s.substring(0, 4);       // 1F13
    if (s.indexOf("\x8f\xe3") != -1) ret += "up";    // 上(Shift_JIS)
    if (s.indexOf("\x89\xba") != -1) ret += "down";  // 下(Shift_JIS)
    int index = s.indexOf("\x92\x69\x96\xda");       // 段目(Shift_JIS)
    if (index != -1) ret += (String) "-" + s.substring(index - 1, index);
    shelf = ret;
    return true;
  }
  bool parseQty(String s) {
    s.trim();
    log_i("s: %s", s.c_str());
    qty = s.toInt();
    log_i("Quantity: %d", qty);
    return true;
  }
};
