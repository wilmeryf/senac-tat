/**
  Leitura analógica - Luz de cortesia
  @author Anderson Wilmer
  Data: 16 de setembro de 2025
*/

void setup() {
  pinMode(13, OUTPUT);
  Serial.begin(9600);

}

void loop() {
  int sensor = analogRead(A0);
  Serial.println(sensor);

}
