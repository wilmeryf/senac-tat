/*
DATA: 20 de agosto de 2026
Este código está relacionado com "04-Normalização.md"
MySQL Workbench
*/

-- ============================================
-- 1. CRIANDO O BANCO DE DADOS
-- ============================================

CREATE DATABASE pizzaria;

USE pizzaria;


-- ============================================
-- 2. CRIANDO A TABELA CLIENTES
-- ============================================

/*
A tabela clientes armazena os dados dos clientes
da Bella Napoli.

O campo id será nossa CHAVE PRIMÁRIA (PK).

PK = identifica cada registro de forma única.
*/

CREATE TABLE clientes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100),
    telefone VARCHAR(20),
    endereco VARCHAR(200)
);


-- ============================================
-- 3. CADASTRANDO OS CLIENTES
-- ============================================

INSERT INTO clientes
(nome, telefone, endereco)
VALUES
('João', '11999999999', 'Rua A'),
('Maria', '11988888888', 'Rua B'),
('Pedro', '11977777777', 'Rua C');


-- Conferindo os clientes cadastrados

SELECT * FROM clientes;


-- ============================================
-- 4. CRIANDO A TABELA PEDIDOS
-- ============================================

/*
Neste momento, a tabela pedidos possui algumas
informações relacionadas diretamente à pizza.

Isso faz parte da evolução do nosso projeto.

Durante a aula vamos analisar se essa estrutura
está realmente adequada.

Por enquanto, pedidos possui:

- id
- id_cliente
- sabor
- tamanho
- preco
- data_pedido
*/

CREATE TABLE pedidos (
    id INT AUTO_INCREMENT PRIMARY KEY,

    id_cliente INT,

    sabor VARCHAR(100),

    tamanho VARCHAR(20),

    preco DECIMAL(10,2),

    data_pedido DATETIME
);


-- ============================================
-- 5. CRIANDO O RELACIONAMENTO
--    PEDIDOS → CLIENTES
-- ============================================

/*
Cada pedido pertence a um cliente.

A coluna id_cliente será uma CHAVE ESTRANGEIRA (FK).

Relacionamento:

pedidos.id_cliente
        ↓
clientes.id
*/

ALTER TABLE pedidos
ADD CONSTRAINT fk_cliente
FOREIGN KEY (id_cliente)
REFERENCES clientes(id);


-- ============================================
-- 6. CADASTRANDO PEDIDOS
-- ============================================

/*
Neste primeiro momento ainda estamos trabalhando
com o modelo antigo.

Por isso os pedidos possuem:

- sabor
- tamanho
- preco

Mais adiante vamos analisar se essas informações
realmente deveriam estar em pedidos.
*/

INSERT INTO pedidos
(id_cliente, sabor, tamanho, preco, data_pedido)
VALUES
(1, 'Calabresa', 'Grande', 55.00, '2026-08-05 19:30:00'),
(2, 'Portuguesa', 'Média', 48.00, '2026-08-05 19:45:00'),
(3, 'Frango', 'Grande', 52.00, '2026-08-05 20:10:00'),

(1, 'Margherita', 'Média', 39.90, NOW()),
(2, 'Calabresa', 'Broto', 33.50, NOW()),
(3, 'Portuguesa', 'Grande', 58.90, NOW()),
(1, 'Frango', 'Média', 45.50, NOW()),
(2, 'Margherita', 'Grande', 51.00, NOW()),
(3, 'Calabresa', 'Média', 42.90, NOW()),
(1, 'Portuguesa', 'Broto', 28.90, NOW()),
(2, 'Frango', 'Grande', 62.90, NOW()),
(3, 'Margherita', 'Broto', 31.00, NOW()),
(1, 'Calabresa', 'Grande', 55.00, NOW()),
(2, 'Portuguesa', 'Média', 48.00, NOW()),
(3, 'Frango', 'Broto', 35.90, NOW()),
(1, 'Margherita', 'Grande', 53.00, NOW()),
(2, 'Calabresa', 'Média', 42.90, NOW()),
(3, 'Portuguesa', 'Grande', 58.90, NOW()),
(1, 'Frango', 'Média', 45.50, NOW()),
(2, 'Margherita', 'Grande', 66.40, NOW());


-- Conferindo os pedidos

SELECT * FROM pedidos;


-- ============================================
-- 7. CRIANDO A TABELA PIZZAS
-- ============================================

/*
Agora criamos o cardápio da Bella Napoli.

A tabela pizzas passa a armazenar as informações
das pizzas disponíveis para venda.

Cada pizza possui:

- id
- sabor
- tamanho
- preco

Observe que o preço da pizza já existe aqui.
*/

CREATE TABLE pizzas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    sabor VARCHAR(100),
    tamanho VARCHAR(20),
    preco DECIMAL(10,2)
);


-- ============================================
-- 8. CADASTRANDO AS PIZZAS
-- ============================================

INSERT INTO pizzas
(sabor, tamanho, preco)
VALUES
('Calabresa', 'Média', 42.90),
('Margherita', 'Média', 39.90),
('Frango c/ Catupiry', 'Grande', 48.00);


-- Conferindo o cardápio

SELECT * FROM pizzas;


-- ============================================
-- 9. ADICIONANDO TEMPORARIAMENTE
--    A RELAÇÃO PEDIDOS → PIZZAS
-- ============================================

/*
Agora vamos experimentar uma relação direta
entre pedidos e pizzas.

A coluna id_pizza será uma CHAVE ESTRANGEIRA (FK)
que aponta para pizzas.id.

IMPORTANTE:

Esse modelo ainda será analisado durante a aula.

Vamos descobrir se colocar uma única pizza dentro
de cada pedido é suficiente para representar
corretamente todos os pedidos da pizzaria.
*/

ALTER TABLE pedidos
ADD COLUMN id_pizza INT;


ALTER TABLE pedidos
ADD CONSTRAINT fk_pedido_pizza
FOREIGN KEY (id_pizza)
REFERENCES pizzas(id);


-- ============================================
-- 10. CADASTRANDO UM PEDIDO RELACIONADO À PIZZA
-- ============================================

/*
Agora temos uma diferença importante.

O preço da pizza já está cadastrado na tabela pizzas.

Por isso, ao relacionar o pedido com uma pizza,
não precisamos informar novamente o preço.

Relacionamento:

pedidos.id_pizza
        ↓
pizzas.id

Neste exemplo:

id_cliente = 2 → Maria
id_pizza   = 1 → Calabresa
*/

INSERT INTO pedidos
(id_cliente, id_pizza, data_pedido)
VALUES
(2, 1, NOW());


-- ============================================
-- 11. CADASTRANDO MAIS PEDIDOS RELACIONADOS
--     AO CARDÁPIO
-- ============================================

/*
Outros pedidos utilizando as pizzas cadastradas.

id_pizza:

1 = Calabresa
2 = Margherita
3 = Frango c/ Catupiry
*/

INSERT INTO pedidos
(id_cliente, id_pizza, data_pedido)
VALUES
(1, 2, NOW()),
(3, 3, NOW()),
(1, 1, NOW()),
(2, 2, NOW());


-- Conferindo os pedidos

SELECT * FROM pedidos;


-- ============================================
-- 12. CONSULTANDO A ESTRUTURA DAS TABELAS
-- ============================================

DESCRIBE clientes;

DESCRIBE pedidos;

DESCRIBE pizzas;


-- ============================================
-- 13. CONFERINDO AS RELAÇÕES
-- ============================================

/*
SHOW CREATE TABLE mostra a estrutura completa
da tabela, incluindo suas FOREIGN KEYS.
*/

SHOW CREATE TABLE pedidos;


-- ============================================
-- 14. CONSULTANDO PEDIDOS E CLIENTES
-- ============================================

/*
Relembrando o JOIN estudado anteriormente.

Aqui relacionamos:

PEDIDOS → CLIENTES
*/

SELECT
    pedidos.id,
    clientes.nome,
    pedidos.sabor,
    pedidos.preco
FROM pedidos

JOIN clientes
ON pedidos.id_cliente = clientes.id;


-- ============================================
-- 15. CONSULTANDO PEDIDOS, CLIENTES E PIZZAS
-- ============================================

/*
Agora vamos utilizar dois relacionamentos.

PEDIDOS → CLIENTES
PEDIDOS → PIZZAS

O objetivo é descobrir:

- número do pedido
- nome do cliente
- sabor da pizza
- preço
*/

SELECT
    pedidos.id,
    clientes.nome,
    pizzas.sabor,
    pizzas.tamanho,
    pizzas.preco
FROM pedidos

JOIN clientes
ON pedidos.id_cliente = clientes.id

JOIN pizzas
ON pedidos.id_pizza = pizzas.id;


-- ============================================
-- 16. OBSERVANDO O PROBLEMA
-- ============================================

/*
Compare:

PEDIDOS
- sabor
- tamanho
- preco

PIZZAS
- sabor
- tamanho
- preco

Temos informações sobre pizza armazenadas
em DOIS lugares diferentes.

Isso gera REDUNDÂNCIA.

Além disso, um pedido pode possuir
mais de uma pizza.

Pergunta:

Será que colocar apenas um id_pizza
em pedidos resolve todos os casos?

Essa questão será respondida durante a aula.
*/


-- ============================================
-- 17. CONFERÊNCIA FINAL DO BANCO
-- ============================================

SHOW TABLES;


SELECT * FROM clientes;

SELECT * FROM pedidos;

SELECT * FROM pizzas;


-- ============================================
-- 18. ESTRUTURA FINAL
-- ============================================

DESCRIBE clientes;

DESCRIBE pedidos;

DESCRIBE pizzas;


/*
====================================================
ESTADO ATUAL DO BANCO
====================================================

CLIENTES
    │
    │ id_cliente
    ▼
PEDIDOS
    │
    │ id_pizza
    ▼
PIZZAS


Neste momento, pedidos ainda possui:

- sabor
- tamanho
- preco
- id_pizza

Isso é INTENCIONAL.

Durante a próxima etapa vamos perceber que:

1. Um pedido pode possuir várias pizzas.

2. Uma pizza pode aparecer em vários pedidos.

3. Uma única coluna id_pizza em pedidos não é
   suficiente para representar esse relacionamento.

4. Informações da pizza estão duplicadas em pedidos
   e pizzas.

A partir desses problemas vamos criar a tabela:

ITENS_PEDIDO

E posteriormente estudar a NORMALIZAÇÃO do banco.

====================================================
FIM DO BANCO OFICIAL
====================================================
*/

create table itens_pedido (
	id int auto_increment primary key,
	id_pedido int not null,
	id_pizza int not null,
	quantidade int not null,
	subtotal decimal(10,2),
    
	constraint fk_item_pedido
	foreign key (id_pedido)
	references pedidos(id),
    
	constraint fk_item_pizza
	foreign key (id_pizza)
	references pizzas(id)
);

describe itens_pedido;

insert into itens_pedido (id_pedido, id_pizza, quantidade, subtotal)
values
(1, 1, 1, 42.90),
(1, 2, 1, 39.90);

select
	itens_pedido.id,
	clientes.nome,
	pizzas.sabor,
	itens_pedido.quantidade,
	itens_pedido.subtotal
from itens_pedido
inner join pedidos on itens_pedido.id_pedido = pedidos.id
inner join pizzas on itens_pedido.id_pizza = pizzas.id
inner join clientes on pedidos.id_cliente = clientes.id;

show create table pedidos;

alter table
drop foreign key fk_pedido_pizza;

alter table pedidos
drop column id_pizza,
drop column sabor,
drop column tamanho,
drop column preco;

describe pedidos;

insert into pedidos (id_cliente, data_pedido)
values
(1, now());

select
	pedidos.id,
	clientes.nome,
	pedidos.data_pedido
from pedidos
inner join clientes on pedidos.id_cliente = clientes.id;

describe itens_pedido;
select*from itens_pedido;

select*from pedidos;

insert into itens_pedido (id_pedido, id_pizza, quantidade, subtotal)
values
(26, 1, 1, 42.90),
(26, 2, 1, 39.90);

select
	itens_pedido.id,
	clientes.nome,
	pizzas.sabor,
	itens_pedido.quantidade,
	itens_pedido.subtotal
from itens_pedido
inner join pedidos on itens_pedido.id_pedido = pedidos.id
inner join pizzas on itens_pedido.id_pizza = pizzas.id
inner join clientes on pedidos.id_cliente = clientes.id
where itens_pedido.id_pedido = 26;
