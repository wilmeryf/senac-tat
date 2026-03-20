# Arduino com Ethernet Shield

> **Data:** 17 de março de 2026

Conexão de um Arduino com Ethernet Shield na rede.

---

## "Processo de Automação Industrial"

Na reta final da UC usaremos o Arduino como IoT (Internet das Coisas)

### Materiais

- Arduino Uno R3
- Ethernet Shield
- Cabo RJ45
- Fonte
- Frtizing
- Arduino IDE

---

## MAC ADDRESS
Após a etapa de configuração do roteador com a conexão do arduino no roteador, devemos encontrar o IP do Arduino. 
Para isso existe um link onde conseguimos encontrar o MAC ADDRESS dele:

Link: [https://ssl.crox.net/arduinomac](https://ssl.crox.net/arduinomac)

Exemplo:  
byte mac[6] = { 0x90, 0xA2, 0xDA, 0x38, 0x53, 0xB6 };

---

## 💻 Código Arduino IDE

```c++
/**  
  Arduino Ethernet  
  @author Ryan, Reginaldo e Arderson  
*/  

// As linhas abaixo usam as bibliotecas do módulo Ethernet  
// Obs: Este módulo usa os pinos 4, 10, 11, 12 e 13  
#include <SPI.h>  
#include <Ethernet.h>  

// Gerar o MAC ADDRESS (https://ssl.crox.net/arduinomac)  
// Exemplo: byte mac[6] = { 0x90, 0xA2, 0xDA, 0x38, 0x53, 0xB6 };  

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
```  

---

## Conclusão

- Tudo que esta no "void setup" aparecerá no Serial Monitor com as informações solicitadas
- A atividade era reservar o IP do arduino
- Ao final ainda pingamos o IP do arduino para testar a conexão na rede
- Isso foi feito no celular apartir de um aplicativo chamado **"Ping"**
