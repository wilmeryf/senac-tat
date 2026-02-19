# Criação de Partição e Backup com Hiren’s Boot CD

**Data:** 12 de fevereiro de 2026

## 📌 Objetivo
Criar uma partição de 10GB utilizando o Hiren’s Boot CD e realizar o backup de arquivos do Windows 10 para essa nova partição.

---

## 1️⃣ Ambiente Inicial – Windows 10

Área de trabalho do Windows 10:

![Windows 10 Área de Trabalho](Imagens/01-windows10-area-de-trabalho.png)

Pasta contendo os arquivos de teste:

![Pasta Arquivos Teste](Imagens/02-pasta-arquivos-teste.png)

---

## 2️⃣ Inicialização pelo Hiren’s Boot CD

Menu inicial do Hiren’s:

![Menu Hiren's](Imagens/03-menu-inicial-hirens.png)

Mini Windows XP carregado:

![Mini Windows XP](Imagens/04-mini-windows-xp-hirens.png)

---

## 3️⃣ Criação do Disco Virtual de 10GB

Disco criado nas configurações de armazenamento do VirtualBox:

![Disco 10GB VirtualBox](Imagens/05-disco-10gb-criado-virtualbox.jpg)

---

## 4️⃣ Criação da Partição "Backup"

Criação da partição utilizando 100% do espaço disponível:

![Criação da Partição](Imagens/06-criacao-particao-backup.jpg)

Partição criada com o nome "Backup":

![Partição Backup Criada](Imagens/07-particao-backup-criada.jpg)

---

## 5️⃣ Processo de Backup

Pasta original localizada no Desktop:

![Pasta no Desktop](Imagens/08-pasta-arquivos-no-desktop.jpg)

Processo de cópia para a partição Backup:

![Cópia para Backup](Imagens/09-copia-arquivos-para-backup.jpg)

Arquivos dentro da partição Backup:

![Arquivos Dentro do Backup](Imagens/10-arquivos-dentro-do-backup.jpg)

---

## 6️⃣ Confirmação no Windows 10

Confirmação da partição e dos arquivos após reinicialização no Windows 10:

![Confirmação Windows 10](Imagens/11-confirmacao-backup-windows10.png)

---

## 🎯 Resultado

A partição foi criada com sucesso através do Hiren’s Boot CD e os arquivos foram copiados corretamente para o novo volume "Backup", sendo posteriormente confirmados no Windows 10.

---

## 📚 Competências Praticadas

- Criação de disco virtual no VirtualBox  
- Gerenciamento de partições  
- Uso do Hiren’s Boot CD  
- Backup manual de arquivos  
- Verificação de integridade dos dados  
