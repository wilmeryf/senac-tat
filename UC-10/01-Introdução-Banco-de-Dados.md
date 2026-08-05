# Introdução ao Banco de Dados

> **Data:** 04 de agosto de 2026

Banco de Dados podem ser vistos em diversos lugares.

---

## O que é um Banco de Dados?

Um Banco de Dados é um sistema utilizado para armazenar, organizar e gerenciar informações de forma estruturada, permitindo consultas, inserções, alterações e exclusões de dados.

Atualmente, bancos de dados estão presentes em diversos sistemas, como:

- Aplicativos;
- Sites;
- Redes sociais;
- Sistemas empresariais;
- Hospitais;
- Bancos;
- Lojas virtuais.

### 🐬 MySQL Workbench

O MySQL Workbench é uma ferramenta gráfica utilizada para criar, administrar e consultar bancos de dados MySQL.

Durante a aula, foi utilizado para executar comandos SQL, criar bancos de dados, tabelas e inserir registros.

---

## Comandos utilizados

Comando básicos que foram usado no MySQL Workbench:

```
SHOW DATABASES;
```
↳ Exibe todos os bancos de dados existentes no servidor.

```
CREATE DATABASE pizzaria;
```
↳ Cria um novo banco de dados.

```
USE pizzaria;
```
↳ Define qual banco será utilizado.

Atalho: `CTRL + ENTER` → executa apenas o comando onde o cursor está posicionado.

```
CREATE TABLE clientes (
  id INT AUTO_INCREMENT PRIMARY KEY,
  nome VARCHAR(100),
  telefone VARCHAR(20),
  endereco VARCHAR(200)
);
```
↳ `CREATE TABLE` → cria uma nova tabela.  
↳ `id` → identificador único do cliente.  
↳ `INT` → número inteiro.  
↳ `AUTO_INCREMENT` → gera automaticamente o próximo ID.  
↳ `PRIMARY KEY` → chave primária da tabela.  
↳ `VARCHAR` → campo de texto com tamanho definido.  

```
SHOW TABLES;
```
↳ Mostra todas as tabelas existentes no banco selecionado.

```
DESCRIBE clientes;
```
↳ Exibe a estrutura da tabela.

```
INSERT INTO clientes (nome, telefone, endereco)
VALUES
('Maria', '11999999998', 'Rua B'),
('Pedro', '11999999997', 'Rua C'),
('Carlos', '11999999996', 'Rua D');
```
↳ Para adicionar registros no banco.

```
SELECT*FROM clientes;
```
↳ Exibe todos os registros armazenados na tabela.

```
CREATE TABLE pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(100),
    tamanho VARCHAR(20),
    preco DECIMAL(10,2)
);
```
↳ `DECIMAL(10,2)` → utilizado para armazenar valores monetários com duas casas decimais.
