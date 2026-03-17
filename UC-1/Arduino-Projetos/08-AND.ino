/**
  Funções lógicas - AND
  Simulador de uma prensa bi-manual
  @author Anderson Wilmer
  Data: 15 de setembro de 2025
*/

void setup() {
  pinMode(13, OUTPUT);
  pinMode(2, INPUT_PULLUP);
  pinMode(3, INPUT_PULLUP);

}

void loop() {
  int botao1 = digitalRead(2);
  int botao2 = digitalRead(3);
  //Função AND
  //Se o botao1 "E" o botao2 forem pressionados
  if (botao1 == 0 && botao2 == 0) {
    digitalWrite(13, HIGH);
  } else {
    digitalWrite(13, LOW);
  }

}
