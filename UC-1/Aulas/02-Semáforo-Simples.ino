/**
  Semáforo Simples
  @author Anderson Wilmer
*/

//Variável para ajustar o tempo 
//entre vermelho e verde
int tempo1 = 4000;


//Variável para ajustar o tempo amarelo
//entre as outras cores
int tempo2 = 1500;


void setup() {
  // put your setup code here, to run once:
  pinMode(2, OUTPUT); //Verde B
  pinMode(3, OUTPUT); //Amarelo B
  pinMode(4, OUTPUT); //Vermelho B
  pinMode(5, OUTPUT); //Verde A
  pinMode(6, OUTPUT); //Amarelo A
  pinMode(7, OUTPUT); //Vermelho A

}

void loop() {
  // put your main code here, to run repeatedly:

  //Passo 1
  digitalWrite(5, HIGH); //Verde A aceso
  digitalWrite(6, LOW); //Amarelo A apagado
  digitalWrite(7, LOW); //Vermelho A apagado

  digitalWrite(2, LOW); //Verde B apagado
  digitalWrite(3, LOW); //Amarelo B apagado
  digitalWrite(4, HIGH); //Vermelho B aceso

  delay(tempo1);

  //Passo 2
  digitalWrite(5, LOW); //Verde A apagado
  digitalWrite(6, HIGH); //Amarelo A ligado
  
  delay(tempo2);
  
  //Passo 3
  digitalWrite(5, LOW); //Verde A apagado
  digitalWrite(6, LOW); //Amarelo A apagado
  digitalWrite(7, HIGH); //Vermelho A aceso

  digitalWrite(2, HIGH); //Verde B aceso
  digitalWrite(3, LOW); //Amarelo B apagado
  digitalWrite(4, LOW); //Vermelho B apagado
  
  delay(tempo1);
  
  //Passo 4
  digitalWrite(2, LOW); //Verde B apagado
  digitalWrite(3, HIGH); //Amarelo B ligado
  
  delay(tempo2);

}
