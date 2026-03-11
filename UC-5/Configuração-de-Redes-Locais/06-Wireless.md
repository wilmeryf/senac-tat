# Roteador Wireless

> **Data:** 10 de março de 2026

Conectamos um computador e um celular em um roteador sem fio.

---

## Instalação do Roteador

Modelo utilizado: **TP-Link AX3000 Gigabit WiFi 6**

![Roteador](Imagens/01-roteador2.jpg)

### Instalação Física

- Primeiro conectamos ele na fonte
- Ligamos ele no botão Power ON/OFF
  - Esperamos ele fazer o reboot
- Realizar o Reset (clips de papel)
  - Segure por alguns segundos, até que TODAS as luzes acendam
- Após isso, deve-se conectar as portas WAN (na internet) e LAN (no PC)

### Acesso à Interface

- Entre na interface de configuração do roteador inserindo o seu respectivo IP **"192.168.0.1"**
- Colocamos a senha do roteador
- Definimos o SSID e a senha da rede
  - Esse modelo de roteador é Dual Band, logo transmite as redes 2.4 GHz e 5 GHz simultaneamente
- Em seguida testamos a conexão em nosso dispositivo móvel

![Celular](Imagens/02-celular.jpg)

- Em Wireless → Wireless Settings pode ver nossas alterações feitas

![Wireless](Imagens/03-wireless.jpg)

- Em Advanced na aba DHCP Server, podemos ver a lista de dispositivos conectados à rede

![Advanced](Imagens/04-advanced.jpg)

---

## Topologia da Rede

Diagrama lógico da rede usada neste laboratório.

```mermaid
graph TD

WAN[Internet / WAN do provedor]

Router[Roteador Wireless <br> 1 Porta WAN <br> 4 Portas LAN]

PC1[Computador]
Smartphone[Celular]

WAN --> |Porta WAN| Router

Router --> |LAN 1| PC1
Router --> |WLAN| Smartphone
```
### Imagem da topologia usada neste laboratório:

![Topologia](Imagens/05-topologia-wireless.jpg)
