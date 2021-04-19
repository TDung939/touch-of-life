int touch = 7;
void setup() {
  Serial.begin(9600);
}

void loop() {
  int val = digitalRead(touch);
  Serial.println(val);
  delay(50);
}
