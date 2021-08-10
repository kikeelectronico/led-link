#include <WiFi.h>
#include <HTTPClient.h>
#include <ESP32httpUpdate.h>
#include <EEPROM.h>

#include "ota.h"
#include "definitions.h"

configuration_struct configuration;

void setup() {
  Serial.begin(115200);

  Serial.println("\r\n\r\nWELCOME TO LED LINK");
  Serial.println("\r\n");
  EEPROM.begin(512);  
  EEPROM.get(0, configuration);

  Serial.print("Connecting to ");
  Serial.println(configuration.ssid);
  WiFi.begin(configuration.ssid, configuration.password);

  while (WiFi.status() != WL_CONNECTED){
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\r\nConnected");

  checkForUpdates(String(configuration.update_server), version_code);

}

void loop() {
  // put your main code here, to run repeatedly:

}
