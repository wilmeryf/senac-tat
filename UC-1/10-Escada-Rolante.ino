/**
  Desafio - OR Escada Rolante
  Simulador de uma parada de emergência da escada rolante
  @author Anderson Wilmer
  Data: 16 de setembro de 2025
*/

void setup() {
  pinMode(13, OUTPUT);
  pinMode(3, INPUT_PULLUP);
  pinMode(2, INPUT_PULLUP);
  digitalWrite(13, HIGH); //LED inicia ligado("escada funcionando")

}

void loop() {
  int botao1 = digitalRead(2);
  int botao2 = digitalRead(3);
  //Função OR
  //Se o botao1 "OU" o botao2 for pressionado
  if (botao1 == 0 || botao2 == 0) {
    digitalWrite(13, LOW);
  }

}
