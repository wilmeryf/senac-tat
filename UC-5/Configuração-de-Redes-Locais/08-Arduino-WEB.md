# Servidor WEB do Arduino na rede local

> **Data:** 18 de março de 2026

Configuramos um código html para o arduino.

---

## Configurações do Visual Code

Primeiro criamos uma pasta para guardar o arquivo

Em Explorador de Arquivos:
Criar uma pasta "public_html" → Entrar na pasta → Botão direito, logo Mostrar mais opções → Abrir com Code

### Adicionais

1. File → Preferences → Settings → pesquise por WRAP e habilite a opção "ON".
2. Faça o download do **Live Server**

Dentro do VSCode crie um arquivo "index.html". Clicando em "Go Live", aparecerá o seu site.

3. No navegador dê um F12 → Toggle device toolbar → Seleciona Iphone 6/7/8 → busque por 3 pontinhos → Show device frame

Customizamos ele para uma tela de celular, é recomendável usar duas interfaces ao mesmo tempo, do seu código e do seu site.

**Loopback (127.0.0.0 a 127.255.255.255)**: Endereço de localhost. Ele serve para o computador se comunicar consigo mesmo sem enviar dados para a rede externa.

---

## Código HTML

Este será o códgio html feito para integrar ao Arduino.

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
    </style>
</head>
<body>
    <h1>Hello Arduino</h1>
</body>
</html>
```

---

## Arduino IDE

Aqui foi atribuído o código html no Arduino

```c++
/**
  Arduino WEB Server
  @author Anderson
*/

#include <SPI.h>
#include <Ethernet.h>

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
    </style>
</head>
<body>
    <h1>Hello Arduino</h1>
</body>
</html>
)HTML";

void setup() {
  Serial.begin(9600);
  Ethernet.begin(mac);
  server.begin();
  Serial.println("Servidor WEB");
  Serial.print("IP do Servidor: ");
  Serial.println(Ethernet.localIP());
}

void loop() {
  // Tem alguém tentando se conectar comigo? (requisição navegador)
  EthernetClient client = server.available();
  // Navegador de internet faz uma requisição
  if (client) {
    // Ler a requisição
    if (client.available()) {
      client.read();
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

## Concluaão

Ao final desta atividade testamos o nosso projeto acessando o IP do arduino no nosso navegador pelo celular.
