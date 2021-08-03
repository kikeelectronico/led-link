#include <ESP8266HTTPClient.h>
#include <ESP8266httpUpdate.h>

const char* binURL = "http://github.com/kikeelectronico/led-link/releases/download/1/base.ino.bin";

void checkForUpdates() {

  HTTPClient httpClient;
  httpClient.begin( binURL );
  int httpCode = httpClient.GET();
  if( httpCode == 200 ) {
    Serial.println( "Preparing to update" );
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
  else {
    Serial.print( "Firmware version check failed, got HTTP response code " );
    Serial.println( httpCode );
  }
  httpClient.end();
}

void setup() {
  // put your setup code here, to run once:

}

void loop() {
  // put your main code here, to run repeatedly:

}
