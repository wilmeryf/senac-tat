/**
  Estudo dos botôes (PULL DOWN, PULL UP, INPUT_PULLUP)
  @author Anderson Wilmer
  Data: 15 de setembro de 2025
*/

void setup() {
  Serial.begin(9600);
  pinMode(12, INPUT); //Botão B1 (PULL DOWN)
  pinMode(11, INPUT); //Botão B2 (PULL UP)
  pinMode(10, INPUT_PULLUP); //Botão B3 ATENÇÃO !!! (INPUT_PULLUP)

}

void loop() {
  //Variável local(só funciona no loop) que recebe a leitura de B1
  //Uma leitura digital pode retornar 0 (LOW) ou 1 (HIGH)
  int botao1 = digitalRead(12); //B1 (PULL DOWN)
  int botao2 = digitalRead(11); //B2 (PULL UP)
  int botao3 = digitalRead(10); //B3 (INPUT_PULLUP) 
  Serial.print("Botao1: ");
  Serial.print(botao1);
  Serial.print(" | ");
  Serial.print("Botao2: ");
  Serial.print(botao2);
  Serial.print(" | ");
  Serial.print("Botao3: "); 
  Serial.println(botao3);

}
