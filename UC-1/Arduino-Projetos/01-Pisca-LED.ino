/**
  Pisca LED
  @author Anderson Wilmer
  Data: 08 de setembro de 2025
*/

void setup() {
  pinMode(13, OUTPUT); //configurar o pino 13 como saída
  // put your setup code here, to run once:

}

void loop() {
  digitalWrite(13, HIGH); //acender o LED
  delay(1000); //1000ms = 1s
  digitalWrite(13, LOW); //apagar o LED
  delay(1000);
  // put your main code here, to run repeatedly:

}
