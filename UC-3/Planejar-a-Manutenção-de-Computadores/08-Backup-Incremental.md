# Backup Incremental com Cobian Reflector

> **Data:** 19 de fevereiro de 2026

## 🎯 Objetivo

Demonstrar o funcionamento do Backup Incremental utilizando o Cobian Reflector, evidenciando como o sistema realiza o primeiro backup completo e, posteriormente, copia apenas os arquivos alterados.

---

## 1. Seleção do Tipo de Backup

Foi criada uma nova tarefa no Cobian Reflector, selecionando o tipo **Backup Incremental**.

![Seleção do Backup Incremental](Imagens/06-selecao-backup-incremental.png)

---

## 2. Definição de Origem e Destino

Foi configurada:

- **Origem:** "Pasta Incremental"
- **Destino:** Pasta de Backup

![Origem e Destino](Imagens/07-origem-destino.png)

---

## 3. Primeiro Backup (Completo)

Mesmo configurado como incremental, o primeiro backup executado é sempre um **backup completo**, criando a base inicial.

![Primeiro Backup Completo](Imagens/08-primeiro-backup-completo.png)

---

## 4. Alteração dos Arquivos

Foram adicionados novos arquivos na pasta de origem para simular modificação de dados.

![Alteração dos Arquivos](Imagens/09-alteracao-arquivos.png)

---

## 5. Execução do Backup Incremental

Ao executar novamente a tarefa, o Cobian Reflector copiou apenas os arquivos que foram criados ou modificados desde o último backup.

É possível observar no carregamento a quantidade de arquivos alterados.

![Execução do Incremental](Imagens/10-execucao-backup-incremental.png)

---

## 6. Resultado Final

Na pasta de destino é possível visualizar os arquivos gerados, confirmando o funcionamento do backup incremental.

![Resultado Final](Imagens/11-resultado-pasta-backup.png)

---

# Conceito Técnico

- O primeiro backup incremental é sempre completo.
- Os backups seguintes copiam apenas arquivos alterados desde o último backup.
- Para restaurar, é necessário o backup completo inicial e todos os incrementais subsequentes.

---

# Observação Importante

O Backup Incremental remove o atributo de arquivamento (A) após a cópia.  
Caso o arquivo seja modificado novamente, o atributo é reativado, permitindo nova inclusão no próximo incremental.
