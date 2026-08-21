# Normalização e tabela nova criada

> **Data:** 20 de agosto de 2026

Importância da normalização no código.

---

## Normalização

É o processo de organizar as tabelas para evitar dados repetidos e inconsistentes.

Foram apresentadas as três formas normais:

- 1FN: Garante que cada célula da tabela tenha apenas um único valor (nada de listas ou textos separados por vírgula).
- 2FN: Exige que todos os dados de uma linha dependam da chave identificadora inteira dessa tabela.
- 3FN: Elimina dados que dependem de outras colunas comuns, e não da chave principal (como o Bairro depender do CEP).

---

## Nova Tabela - `itens_pedido`

```sql
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
```
- Foi criada uma nova tabela para representar os itens que pertencem a cada pedido.
- Ela possui duas chaves estrangeiras

### Alteração da tabela `pedidos`

Primeiro, verificamos a chave estrangeira que relacionava pedidos diretamente com pizzas:

```sql
SHOW CREATE TABLE pedidos;

-- Depois removemos essa relação:

ALTER TABLE pedidos
DROP FOREIGN KEY fk_pedido_pizza;

-- E removemos de pedidos as colunas que pertenciam às informações da pizza:

ALTER TABLE pedidos
DROP COLUMN id_pizza,
DROP COLUMN sabor,
DROP COLUMN tamanho,
DROP COLUMN preco;
```

### Inserindo itens no pedido

Foram inseridos valores na nova tabela:

```sql
INSERT INTO itens_pedido
(id_pedido, id_pizza, quantidade, subtotal)
VALUES
(26, 1, 1, 42.90),
(26, 2, 1, 39.90);
```

Assim, o pedido 26 possui duas pizzas.

### Relacionando as tabelas

```sql
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
```

Isso permitiu consultar o pedido junto com o cliente, as pizzas, a quantidade e o subtotal.
Agora a relação entre pedidos e pizzas é feita através da tabela itens_pedido.
