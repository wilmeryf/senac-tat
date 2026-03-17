/**
  Funções lógicas - NOT
  Acender ou apagar um LED com um botão
  @author Anderson Wilmer
  Data: 16 de setembro de 2025
*/

void setup() {
  pinMode(13, OUTPUT);
  pinMode(2, INPUT_PULLUP);
  /*
  Serial.begin(9600);
  digitalWrite(13, LOW); //HIGH = 1 = 5V | LOW = 0 = GND
  int led = digitalRead(13); //capturar o estado do LED (0 ou 1)
  Serial.print("Valor de leitura do LED: ");
  Serial.println(led);
  */

}

void loop() {
  int botao1 = digitalRead(2);
  int led = digitalRead(13);
  //se o botão for pressionado
  //inverter a lógica para acender ou apagar o LED (NOT)
    if(botao1 == 0) {
      digitalWrite(13, !led); //! função NOT
    }
    delay(150); //minimizar efeito mecânico do botão

}
