char version_code[2] = "1";
int baudrate = 115200;
int eeprom_size = 512;

struct configuration_struct {
  char ssid[50];
  char password[50];
  char update_server[100];
};
