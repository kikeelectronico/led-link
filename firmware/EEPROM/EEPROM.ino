#include <EEPROM.h>

struct configuration {
  char ssid[50];
  char password[50];
  char ota_server[100];
  char broker_server[100];
  char topic[50];
  char ble_name[50];
  char color[8];
};

configuration my_configuration = {
  "",
  "",
  "",
  "",
  "",
  "",
  "",
};


configuration my_configuration_readed;

void setup() {
  Serial.begin(115200);   
  
  EEPROM.begin(512);
  delay(100);
  EEPROM.put(0,my_configuration);
  EEPROM.commit();
  
  EEPROM.get(0, my_configuration_readed);
  Serial.println("");
  Serial.println("");
  Serial.println(my_configuration_readed.ssid);
  Serial.println(my_configuration_readed.password);
  Serial.println(my_configuration_readed.update_server);
  Serial.println("");
  Serial.println("");
}

void loop() {

}
