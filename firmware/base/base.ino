#include <WiFi.h>
#include <HTTPClient.h>
#include <ESP32httpUpdate.h>
#include <EEPROM.h>

#include "ota.h"
#include "definitions.h"

configuration_struct configuration;

void setup() {
  Serial.begin(baudrate);

  Serial.println("\r\n\r\nWELCOME TO LED LINK");
  Serial.println("\r\n");
  EEPROM.begin(eeprom_size);  
  EEPROM.get(0, configuration);

  Serial.print("Connecting to ");
  Serial.println(configuration.ssid);
  WiFi.begin(configuration.ssid, configuration.password);

  while (WiFi.status() != WL_CONNECTED){
    Serial.print(".");
    delay(1000);
  }

  Serial.println("\r\nConnected");

  checkForUpdates(&configuration.update_server[0], &version_code[0]);

}

void loop() {
  // put your main code here, to run repeatedly:

}
