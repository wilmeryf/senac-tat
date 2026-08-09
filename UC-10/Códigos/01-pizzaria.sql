/*
DATA: 04, 05, 06 e 07 de agosto de 2026
Este código está relcionado com "01-Introdução-Banco-de-Dados.md"
MySQL Workbench
*/

create database pizzaria;

show databases;

use pizzaria;

CREATE TABLE clientes (
	id INT AUTO_INCREMENT PRIMARY KEY,
	nome VARCHAR(100),
	telefone VARCHAR(20),
	endereco VARCHAR(200)
);

show tables;

DESCRIBE clientes;

INSERT INTO clientes (nome, telefone, endereco)
VALUES 
('João', '11999999999', 'Rua A'),
('Maria', '11888888888', 'Rua B'),
('Ryan', '11777777777', 'Rua C'),
('Rafael', '11666666666', 'Rua D'),
('Felipe', '11555555555', 'Rua E');

select*from clientes;

CREATE TABLE pizzas (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(100),
	tamanho VARCHAR(20),
	preco DECIMAL(10,2)
);

DESCRIBE pizzas;

INSERT INTO pizzas (sabor, tamanho, preco)
VALUES
('Calabresa', 'Broto', '30'),
('Portuguesa', 'Broto', '30'),
('Mussarela', 'Broto', '30'),
('Frango com Catupiry', 'Broto', '30'),
('Margherita', 'Broto', '30'),
('Calabresa', 'Médio', '45'),
('Portuguesa', 'Médio', '45'),
('Mussarela', 'Médio', '45'),
('Frango com Catupiry', 'Médio', '45'),
('Margherita', 'Médio', '45'),
('Calabresa', 'Grande', '60'),
('Portuguesa', 'Grande', '60'),
('Mussarela', 'Grande', '60'),
('Frango com Catupiry', 'Grande', '60'),
('Margherita', 'Grande', '60');

select*from pizzas;

CREATE TABLE pedidos (
	id INT AUTO_INCREMENT PRIMARY KEY,
	sabor VARCHAR(100),
	tamanho VARCHAR(100),
	preco DECIMAL(10,2),
	data_pedido DATETIME
);

DESCRIBE pedidos;

INSERT INTO pedidos (sabor, tamanho, preco, data_pedido)
VALUES
('Calabresa', 'Broto', '30', '2026-08-06 19:50'),
('Portuguesa', 'Médio', '45', '2026-08-06 19:57'),
('Mussarela', 'Grande', '60', '2026-08-06 20:19');

select*from pedidos;

ALTER TABLE pedidos
ADD COLUMN id_cliente INT;

ALTER TABLE pedidos
ADD CONSTRAINT fk_cliente
FOREIGN KEY (id_cliente)
REFERENCES clientes(id);

SHOW CREATE TABLE pedidos;

INSERT INTO pedidos(id_cliente, sabor, tamanho, preco, data_pedido)
VALUES
(1, 'Calabresa', 'Médio', '45', NOW());

select*from pedidos;

select*from clientes WHERE id = 1;

SELECT
	clientes.nome,
	clientes.endereco,
	clientes.telefone,
	pedidos.sabor,
	pedidos.preco
FROM pedidos
INNER JOIN clientes
ON pedidos.id_cliente = clientes.id;
