/**
  Leitura Digital - semáforo de pedestres
  @author Anderson Wilmer
  Data: 12 de setembro de 2025
*/

int botao;

void setup() {
  // put your setup code here, to run once:
  pinMode(2, INPUT);
  pinMode(13, OUTPUT);
  pinMode(12, OUTPUT);
  pinMode(11, OUTPUT);

  pinMode(7, OUTPUT);
  pinMode(6, OUTPUT);

}

void loop() {
  digitalWrite(11, HIGH);
  digitalWrite(12, LOW);
  digitalWrite(13, LOW);

  digitalWrite(7, HIGH);
  digitalWrite(6, LOW);

  botao = digitalRead(2);
  //Uso da estrutura if --- else
  if (botao == 1){
    digitalWrite(11, LOW);
    digitalWrite(12, HIGH);
    digitalWrite(13, LOW);

    digitalWrite(7, HIGH);
    digitalWrite(6, LOW);

    delay(3000);

    digitalWrite(11, LOW);
    digitalWrite(12, LOW);
    digitalWrite(13, HIGH);

    digitalWrite(7, LOW);
    digitalWrite(6, HIGH);

    delay(3000);



  } else  {
    digitalWrite(11, HIGH);
    digitalWrite(12, LOW);
    digitalWrite(13, LOW);

    digitalWrite(7, HIGH);
    digitalWrite(6, LOW);
  }                                                                                                                                                                                                                   

}        
