# Compartilhamento de Internet

> **Data:** 18 de maio de 2026

Compartilhamento de Internet usando os comandos no Debian.

---

## Segurança de Redes

### Principais problemas

- Falta de backup
- Infraestrutura
- Usuário

### Firewall

É a divisão entre a rede privada e o exterior (a internet).

- Principal linha de defesa

---

## Configuração de Rede Interna entre Debian e Windows Server

### Passo a passo

1. Dê um `cd /etc`
2. Com `ls`, busque por `network`

```
network
```
↳ É um diretório dentro de `/etc` responsável pelas configurações de rede.

3. Entre em `cd network/`

```
interfaces
```
↳ É o arquivo onde ficam configuradas as placas de rede.

4. Crie uma cópia de segurança com comando `cp interfaces interfaces.bkp`

```
cat NOMEDOARQUIVO
```
↳ **Principalmente** para exibir o conteúdo de arquivos.

5. Dentro de `interfaces`, busque por `enp0s3 inet dhcp`, reponsável por fornecer internet

```
ip a
```
↳ Exibe informações das interfaces de rede.

```
nano NOMEDOARQUIVO
```
↳ **Pode** ser usado para editar arquivos.

6. Dentro de `nano interfaces` escreva no script:

```
# LAN (Gateway)
allow-hotplug enp0s8
iface enp0s8 inet static
address 192.168.32.1/24
```
↳ `#` realiza apenas comentários.

7. Salve o script e saia dele
8. O adaptador que estava em "Não conectado", troque por "Rede interna"

```
systemctl restart networking
```
↳ Reinicia o servidor.

Outros comandos:  
`systemctl start networking` - inicia serviço de rede.  
`systemctl status networking` -  vê status da rede.  
`systemctl stop networking` - para serviço de rede.  
`systemctl status ssh` - verifica status do SSH.

**SSH:** permite acessar o servidor remotamente.

9. Logo, reinicie o servidor
10. Confira se as interfaces de rede estão ligadas

![Interfaces de rede](Imagens/04-rede-ligada.png)

11. Saia com o comando `q`
12. Entre no Windows Server
13. Realize o teste do ping do Gateway

![Teste ping do Gateway](Imagens/05-ping-gateway.png)

---

## Configuração do NAT

- Ativar o módulo NAT no Netfilter
- Configurar nftables (ferramenta de firewall)

### Passo a passo

**Ativar o módulo NAT no Netfilter**

```
sysctl --system
```
↳ Aplica e exibe configurações do kernel e rede do sistema.

1. Entre no diretório `cd /etc/sysctl.d`

```
sysctl.conf
```
↳ É um arquivo de configuração usado para alterar parâmetros do kernel.

2. Edite com `nano sysctl.conf`
3. No script, escreva:

```
# NAT
net.ipv4.ip_forward = 1
```
↳ `net.ipv4.ip_forward = 1` habilita o encaminhamento de pacotes IPv4 entre redes.

4. Salve a alteração e confira nas configurações do sistema

![Configuração de encaminhamento habilitado](Imagens/06-configuracao-habilitada.png)

**Dica:** o comando `mv NOMEERRADO NOMECERTO` renomeia o arquivo.

### Em construção...
