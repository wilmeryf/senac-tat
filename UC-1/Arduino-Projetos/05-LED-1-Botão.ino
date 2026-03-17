/**
	Leitura Digital - ligar e desligar o LED com apenas um botão
  @author Anderson Wilmer
  Data: 12 de setembro de 2025
*/

// C++ code
//

int botao;

void setup()
{
  pinMode(13, OUTPUT);
  pinMode(2, INPUT);
  Serial.begin(9600);
}

void loop()
{
  botao = digitalRead(2);
  Serial.println(botao);
  if (botao == 1){
    digitalWrite(13, HIGH);
  }
  
  else {
    digitalWrite(13, LOW);
  }
}
