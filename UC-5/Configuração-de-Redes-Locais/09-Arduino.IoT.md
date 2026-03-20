# Arduino IoT

> **Data:** 19 de março de 2026

Primeira vez configurando o arduino como IoT.

---

## Código HTML

```html
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arduino WEB Server</title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center;
        }
        
        a {
            text-decoration: none;
            font-weight: bold;
            padding: 15px;
            color: #ffffff;
            display: inline-block;
            width: 100px;
        }
        .on {
            background-color: #3498db;
        }
        .off {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <h1>Arduino IoT</h1>
    <p>Exemplo 1: Controle de dispositivos</p>
    <h2>Controle do LED VERMELHO</h2>
    <a href="/?led-on1" class="on">ON</a>
    <a href="/?led-off1" class="off">OFF</a>
    <h2>Controle do LED AMARELO</h2>
    <a href="/?led-on2" class="on">ON</a>
    <a href="/?led-off2" class="off">OFF</a>
</body>
</html>
```

---

## Arduino IDE

```c++
/**
  Arduino IoT
  Exemplo 1: Controle de dispositivos
  @author Anderson
*/

#include <SPI.h>
#include <Ethernet.h>

#define vermelho 8
#define amarelo 9

// Gerar o MAC ADDRESS (https://ssl.crox.net/arduinomac)
byte mac[6] = { 0x90, 0xA2, 0xDA, 0x62, 0xBA, 0x4B };
EthernetServer server(80);

// Armazenamento do código HTML na memória flash do Arduino
const char pagina[] PROGMEM = R"HTML(
  <!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Arduino WEB Server</title>
    <style>
        body {
            font-family: sans-serif;
            text-align: center;
        }
        
        a {
            text-decoration: none;
            font-weight: bold;
            padding: 15px;
            color: #ffffff;
            display: inline-block;
            width: 100px;
        }
        .on {
            background-color: #3498db;
        }
        .off {
            background-color: #7f8c8d;
        }
    </style>
</head>
<body>
    <h1>Arduino IoT</h1>
    <p>Exemplo 1: Controle de dispositivos</p>
    <h2>Controle do LED VERMELHO</h2>
    <a href="/?led-on1" class="on">ON</a>
    <a href="/?led-off1" class="off">OFF</a>
    <h2>Controle do LED AMARELO</h2>
    <a href="/?led-on2" class="on">ON</a>
    <a href="/?led-off2" class="off">OFF</a>
</body>
</html>
)HTML";

void setup() {
  pinMode(8, OUTPUT);
  pinMode(9, OUTPUT);
  Serial.begin(9600);
  Ethernet.begin(mac);
  server.begin();
  Serial.println("Servidor WEB");
  Serial.print("IP do Servidor: ");
  Serial.println(Ethernet.localIP());
}

void loop() {
  EthernetClient client = server.available();
  if (client) {
    // Ler a requisição e armazenar o valor em um String
    String request = ""; // Armazenar o comando recebido
    // A estrutura abaixo recebe caractere por caractere o comando
    while (client.available()) {
      char c = client.read();
      request += c; // Atribui e soma (monta o comando)
    }

    // Comandos recebidos (tratamento)
    // Se receber o comando led-on
    if (request.indexOf("GET /?led-on1") >= 0) {
      digitalWrite(vermelho, HIGH);
    }

    // Se receber o comando led-off
    if (request.indexOf("GET /?led-off1") >= 0) {
      digitalWrite(vermelho, LOW);
    }

    if (request.indexOf("GET /?led-on2") >= 0) {
      digitalWrite(amarelo, HIGH);
    }

    if (request.indexOf("GET /?led-off2") >= 0) {
      digitalWrite(amarelo, LOW);
    }

    // Disponibilizar o código HTML para o client (navevegador)
    // Passo 1: Iniciar o protocolo de tranferência HTTP
    client.println("HTTP/1.1 200 OK");
    client.println("Content-Type: text/html");
    client.println("Connection: close");
    client.println("");  //importante (pausa)
    // Passo 2: Entregar (resposta a requisição) o HTML
    client.print((__FlashStringHelper*)pagina);
    // Passo 3: Encerrar a conexão
    delay(1);  //pequeno tempo para limpar o buffer
    client.stop();
  }
}
```

---

## Conclusão

- Para esta atividade reulitizamos o código html e criamos um novo para o arduino ide.
- Montamos o arduino real com as peças que adicionamos.
  - 2 LEDs, resistores e jumpers.
- Conexão do arduino na rede. 
- Conseguimos nos comunicar com o arduino através dos nossos dispositivos móveis com uma interação efetuada no navegador.
