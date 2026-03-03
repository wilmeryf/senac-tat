# Cabo Crossover

> **Data:** 26 e 27 de fevereiro de 2026

Conexão entre dois dispositivos com um cabo crossover: T-568A - T-568B

---

### Características dessa rede

- Rede mais simples com baixo custo
- Alcance 100m
- Baixa latência
- Segurança

### Utilidades

- Backup Rápido
- Compartilhar (arquivos / impressoras)
- Simulações, cenários e testes

---

## ✉️ Simulação no Cisco Packet Tracer

Nesta etapa da aula estamos simulando um cenário dentro do Cisco Packet Tracer:

Para está simulação pegamos 3 imagens para usarmos como cenário da aula, que foram: o mapa de São Paulo, a rua do Senac e exemplo do piso da aula.
Com o cenário já criado, abrimos os materias utilizados.

Materiais:
- 1 mesa
- 2 notebooks
- 1 cabo crossover

Conectamos o cabo crossover entre os dois notebooks e simulamos uma transferência de arquivo.

---

## Comandos básicos

```
ipconfig
```
Verifica o IP.

```
ping
```
Testa a rede.

```
ipconfig /release
```
Zera as configurações de IP. (serve só para DHCP)

```
ipconfig /renew
```
Atribuí o novo IP. (serve só para DHCP)

---

## Conectividade

O comando **ping** utiliza o protocolo ICMP (Internet Control Message Protocol) para testar a conectividade entre dispositivos na rede.

Exemplo: 
```
ping 192.168.0.100
```

Conectividades com perdas de:

0%: **OK**

25%, 50% ou 75%:
- Montagem do cabo
- Ruídos ou interferência
- Distância

100%:
- Cabo com problema
- Placa de rede com problema
- Configuração IP
- Firewall bloqueando o ping

---

## 🌐 Configurações de Rede

- Desativar IPv6 e acessar IPv4
- Habilitar resposta ao Ping (ICMPv4)

### Acesso ao IPv4

Caminho:  
Barra de Tarefas → Configurações de Rede → Alterar opções de adaptador → Ethernet → Propriedades

- Desmarcar IPv6  
- Selecionar TCP/IPv4 → Propriedades  

Objetivo: Trabalhar apenas com IPv4 ou configurar IP manualmente.

### Resposta ao ping

Caminho:  
Barra de Tarefas → Firewall do Windows → Configurações Avançadas → Regras de Entrada  

- Localizar “Compartilhamento de Arquivos e Impressoras (Solicitação de Eco – ICMPv4)”  
- Habilitar regra  

Objetivo: Permitir que o computador responda ao comando ping na rede.

---

## Transporte

**TCP (Transmission Control Protocol)**

Para a informação chegar do ponto A ao ponto B, é necessário o transporte. Podemos fazer analogia com as cartas enviadas pelos correios.
