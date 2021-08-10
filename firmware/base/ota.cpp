#include <ESP32httpUpdate.h>

void checkForUpdates(char* update_server, char* version_code) {

  char* binURL = update_server;
  strcat(binURL,"/firmware/base_v");
  strcat(binURL,version_code);
  strcat(binURL,".bin");

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
