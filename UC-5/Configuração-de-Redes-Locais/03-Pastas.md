# Pastas Compartilhadas

> **Data:** 02 de março de 2026

Compartilhamento de pastas através de uma conexão de um cabo Crossover entre dois notebooks.

---

## Máscara de Sub-Rede

Exemplo:

```
IP base: 192.168.0.0
Máscara: 255.255.255.0
```

Quando temos essa máscara, entendemos que:

- 192.168.0 → parte da rede
- .0 → parte do host

Ou seja, a única parte que podemos **alterar** no IP é a parte destinada aos **hosts** (último número).

Porém, se:

```
Máscara: 255.255.0.0
```

Teríamos:

- 192.168 → parte da rede
- .0.0 → parte dos hosts

Ou seja, agora podemos variar os dois últimos números do IP.

---

## Endereços Importantes

- 192.168.0.0 → Identifica a rede
- 192.168.0.255 → **Broadcast**
- 192.168.0.1 até 192.168.0.254 → Hosts válidos

No total temos 254 hosts, normalmente 192.168.0.1 é utilizado como **Gateway**.

---

## CIDR

CIDR é uma forma simplificada de representar a máscara de sub-rede. Ela indica quantos bits são da rede.

Exemplo: 192.168.0.0 /24

O /24 significa 24 bits para a rede, em binário: 
```
11111111.11111111.11111111.00000000
```
Que corresponde a 255.255.255.0

### Relação Máscara x CIDR

| Máscara | CIDR |
|-------------|-------------|
| 255.255.255.0 | /24 |
| 255.255.0.0 | /16 |
| 255.0.0.0 | /8 |

---

## 📂 Compartilhamento de Pasta (Windows 10 e 11)

Para compartilhar uma pasta na rede, é necessário que o computador tenha um usuário com senha.

### Criar usuário local

Caminho:  
Painel de Controle → Exibir por: Ícones Grandes → Ferramentas Administrativas → Gerenciamento do Computador → Usuários e Grupos Locais → Usuários  

- Botão direito → Novo Usuário  
- Definir nome e senha  
- Marcar opção: “A senha nunca expira”  

Observação: O compartilhamento exige usuário com senha ativa.

### Criar e compartilhar a pasta

Caminho:  
Criar nova pasta no Disco Local → Botão direito na pasta → Propriedades → Aba Compartilhamento → Clicar em Compartilhar

- Selecionar o usuário criado  
- Definir permissão: Leitura e Gravação  

Objetivo: Permitir acesso à pasta pela rede utilizando o usuário criado.
