#ifdef DEBUG_ESP_PORT
#define DEBUG_MSG(...) DEBUG_ESP_PORT.printf( __VA_ARGS__ )
#else
#define DEBUG_MSG(...)
#endif

void setup() {
    Serial.begin(115200);

    delay(3000);
    DEBUG_MSG("bootupXXXXXXXXXXXXXXXXXXXXXXXXxx...\n");
}

void loop() {
    DEBUG_MSG("loop %d\n", millis());
    delay(1000);
}
