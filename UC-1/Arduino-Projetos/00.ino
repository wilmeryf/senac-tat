/**
  Arduino Ethernet
  @author Ryan, Reginaldo e Arderson
*/

// As linhas abaixo usam as bibliotecas do módulo Ethernet
// Obs: Este módulo usa os pinos 4, 10, 11, 12 e 13
#include <SPI.h>
#include <Ethernet.h>

// Gerar o MAC ADDRESS (https://ssl.crox.net/arduinomac)
byte mac[6] = { 0x90, 0xA2, 0xDA, 0x38, 0x53, 0xB6 };

// Instanciar o servidor (instanciar é igual a criar)
EthernetServer server(80);  //80 é a porta http

void setup() {
  Serial.begin(9600);
  // A linha abaixo configura placa de rede como DHCP
  Ethernet.begin(mac);
  // A linha abaixo inicia o servidor
  server.begin();
  // Exibir as configurações da rede
  Serial.println("Ardunio Ethernet Shield");
  Serial.print("IP: ");
  Serial.println(Ethernet.localIP());  // Exibir o IP da rede
  Serial.print("Máscara: ");
  Serial.println(Ethernet.subnetMask());  // Exibir a máscara da rede
  Serial.print("Gateway: ");
  Serial.println(Ethernet.gatewayIP());  // Exibir o gateway da rede
  Serial.print("DNS: ");
  Serial.println(Ethernet.dnsServerIP());  // Exibir o DNS da rede
}

void loop() {
}
