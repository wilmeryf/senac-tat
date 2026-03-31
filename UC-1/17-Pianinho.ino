/**
  Pianinho Luminoso
  @author Anderson Wilmer
  Data: 19 de setembro de 2025
*/

void setup() {
  // LEDs
  pinMode(2, OUTPUT);
  pinMode(3, OUTPUT);
  pinMode(4, OUTPUT);
  pinMode(5, OUTPUT);
  // Buzzer
  pinMode(6, OUTPUT);
  // Botões
  pinMode(8, INPUT_PULLUP);
  pinMode(9, INPUT_PULLUP);
  pinMode(10, INPUT_PULLUP);
  pinMode(11, INPUT_PULLUP);

}

void loop() {
  int botao1 = digitalRead(8);
  int botao2 = digitalRead(9);
  int botao3 = digitalRead(10);
  int botao4 = digitalRead(11);
  if (botao1 == 0) {
    digitalWrite(2, HIGH);
    tone(6, 262); //DÓ
  } else if (botao2 == 0) {
    digitalWrite(3, HIGH);
    tone(6, 294); //RÉ
  } else if (botao3 == 0) {
    digitalWrite(4, HIGH);
    tone(6, 330); //MI
  } else if (botao4 == 0) {
    digitalWrite(5, HIGH);
    tone(6, 349); //FÁ
  } else {
    digitalWrite(2, LOW);
    digitalWrite(3, LOW);
    digitalWrite(4, LOW);
    digitalWrite(5, LOW);
    noTone(6);
  }

}
