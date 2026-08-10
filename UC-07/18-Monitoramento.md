# Ferramenta de Monitoramento do Servidor

> **Data:** 25 de maio de 2026

Instalação da ferramenta de monitoramento com interface gráfica.

---

## 📊 Netdata

- Ferramenta de monitoramento via web em tempo real
- Plano gratuito para monitoramento de um servidor

O comando:
```
top
```
Também realiza o monitoramento, bem básico.

---

## Instalação

### Passo a passo

1. Download do script
2. Na linha de comando `wget https://my-netdata.io/kickstart.sh`

![Instalação do Netdata](Imagens/15-instalacao-netdata.png)

```
ls -l ARQUIVOOUDIRETÓRIO
```
↳ Lista arquivos e diretórios com informações detalhadas.

3. Volte ao diretório raiz
4. Execute o comando `ls -l kickstart.sh` para ver as permissões

```
chmod +x ARQUIVO
```
↳ Adiciona permissão de execução ao arquivo.

5. Em seguida, o comando `chmod +x kickstart.sh`

```
./ARQUIVO
```
↳ Muito usado para executar arquivos.

6. Execute o arquivo com `./kickstart.sh`
7. Troque a "NAT" por "Placa em modo Bridge"
8. Reinicie o serviço de rede
9. Confira em `ip a`

![Interface de rede](Imagens/16-interface-enp0s3-bridge.png)

10. Acesse o diretório de configurações do sistema `cd /etc`
11. Edite com `nano nftables.conf`
12. Em Input:

```
iif "enp0s3" tcp dport 19999 accept;
```
↳ Liberou acesso à porta `19999` vindo da interface `enp0s3`.

13. Recarregue o firewall com `nft -f /etc/nftables.conf`
14. Confira em `nft list ruleset`

![Regra do firewall](Imagens/17-regra-porta-19999.png)

15. Na máquina real pesquise por `IPDAINTERFACE:19999`

![Página web do Netdata](Imagens/18-acesso-netdata.png)

16. Clique em "Skip and use the dashboard anonymously" para entrar localmente
