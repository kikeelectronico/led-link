#include <Arduino.h>
#include <ESP32httpUpdate.h>

void checkForUpdates(String update_server, String version_code) {

  String binURL = update_server + "/firmware/base_v" + version_code + ".bin";

  t_httpUpdate_return ret = ESPhttpUpdate.update( binURL );
  switch(ret) {
    case HTTP_UPDATE_FAILED:
      Serial.printf("HTTP_UPDATE_FAILD Error (%d): %s", ESPhttpUpdate.getLastError(), ESPhttpUpdate.getLastErrorString().c_str());
      break;
    case HTTP_UPDATE_NO_UPDATES:
      Serial.println("HTTP_UPDATE_NO_UPDATES");
      break;
  }
}
