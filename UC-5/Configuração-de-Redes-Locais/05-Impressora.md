# 🖨️ Impressora na Rede

> **Data:** 04 e 05 de março de 2026

Realização das tarefas anteriores com 3 notebooks conectados em 1 roteador, acrescentendo a instalação da impressora e outros.

---

## Reservar o IP da impressora

- Conecte a impressora ao roteador
- Pegue o IP da impressora

### Passo a passo 
1 - Desligue a impressora na chave lateral.  
2 - Mantenha o botão FEED (o botão de avançar papel) pressionado.  
3 - Com o botão ainda apertado, ligue a impressora.  
4 - Aguarde 4 ou 5 segundos até ela começar a imprimir e solte o botão.  
5 - No papel busque por **"IP Address"** para obter o endereço.

- Entre na interface web do roteador
- Vá até a lista Reservação DHCP
- Selecione o IP da impressora

---

## Nome e Grupo

Definiremos o **Nome** dos notebooks e um **Grupo de Trabalho** único para rede.

Caminho:  
Painel de controle → Sistema e Segurança → Sistema → Sobre → Configurações Avançadas do Sistema → Nome do Computador → Alterar

Em Prompt de Comando:
```
hostname
```
Aparece o nome do dispositivo.

---

## 🗂️ Compartilhamento de Pastas

- Definir um notebook para compartilhamento de pastas
- Fazer a reserva do IP de compartilhamento
- Criar uma Pasta Pública e uma Pasta Restrita neste computador ( usar unidade C:\ )
- Compartilhar essas pastas com usuário

### sendo que:
Pública (Leitura e Gravação)  
Restrita (Leitura)

- Em "Explorador de Arquivos" acessar "Rede" para descoberta de dispositivos

### Abrir os computadores (para testes)
Notebook de compartilhamento → acessar as pastas compartilhadas, testar as permissões.  
Se tudo OK → Mapear as Unidades de Rede.

---

## Em andamento...
