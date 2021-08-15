#include <Adafruit_NeoPixel.h>
#define PIXEL

#define LED_PIN 6
#define NUMBER_PIXELS 2

class Led {
  private:
    Adafruit_NeoPixel _pixels;
  public:
    Led();
    void on(int r, int g, int b);
    void off();
    void blink(int times, int on, int off, int r, int g, int b);
    void blinkChanging(int times, int on, int off, int r, int g, int b);
};