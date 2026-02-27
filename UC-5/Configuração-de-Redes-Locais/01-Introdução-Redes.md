# Introdução a Redes de Computadores

**Data:** 25 de fevereiro de 2026

Primeira aula com introdução aos conceitos fundamentais de redes e funcionamento da internet.

## 🌐 IP – Internet Protocol

O IP é o protocolo responsável por identificar dispositivos em uma rede.

A comunicação entre computadores acontece por meio de endereços IP.

📌 Analogia: funciona como a placa de um carro.

### IPv4
- Formato: 0.0.0.0 até 255.255.255.255  
- 4 números (octetos) variando de 0 a 255  
- Aproximadamente 4,3 bilhões de endereços  

Cada dispositivo conectado à rede possui um IP.  
O IP pode mudar (principalmente em redes com DHCP).

---

## 🚨 Esgotamento do IPv4

Com o crescimento da internet, os endereços IPv4 começaram a acabar.

**Estratégias adotadas:**

### Máscara de Sub-rede
Define qual parte do IP representa a rede e qual parte representa o host.

### NAT (Network Address Translation)
Permite que vários dispositivos usem um único IP público através de tradução feita pelo roteador.

### 🏠 Endereços Privados
Faixas usadas dentro de redes locais e que não circulam na internet:

- 10.0.0.0 – 10.255.255.255  
- 172.16.0.0 – 172.31.255.255  
- 192.168.0.0 – 192.168.255.255  

📌 O gateway geralmente termina com .1  
Ex: 192.168.0.1

---

## 🌍 IPv6

Criado para substituir o IPv4.

- Endereços maiores  
- Quantidade praticamente ilimitada  
- Formato hexadecimal  

Resolve o problema de esgotamento do IPv4.

---

## 🖥 IP x MAC Address

**IP**
- Endereço lógico  
- Pode mudar  

**MAC Address**
- Endereço físico da placa de rede  
- Definido pelo fabricante  
- Usado na comunicação dentro da rede local  

---

Resumo da aula introdutória sobre identificação de dispositivos e funcionamento básico das redes.
