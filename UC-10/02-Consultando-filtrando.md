# Consultando e Filtrando Informações

> **Data:** 11 de agosto de 2026

Nesta etapa, aprendemos a fazer consultas mais específicas ao banco de dados, utilizando filtros e ordenando os resultados.

---

## Filtros

### WHERE

O `WHERE` é utilizado para estabelecer uma condição e filtrar os registros retornados por uma consulta.

Exemplo:
```sql
SELECT * FROM pedidos
WHERE preco > 50;
```
Aqui ele retorna valores maiores que 50 da coluna "preco" referente à tabela "pedidos".

Outro exemplo:
```sql
SELECT * FROM pedidos
WHERE preco < 50;
```

### ORDER BY

O `ORDER BY` é utilizado para organizar os resultados de uma consulta de acordo com uma determinada coluna.

Ordem crescente:  
`ASC` → significa **ascendente**, organizando os valores do menor para o maior.

Exemplo:
```sql
SELECT * FROM pedidos
ORDER BY preco ASC;
```

Ordem decrescente:  
`DESC` → significa **descendente**, organizando os valores do maior para o menor.

Exemplo:
```sql
SELECT * FROM pedidos
ORDER BY preco DESC;
```

### WHERE + INNER JOIN + ORDER BY

Os comandos aprendidos também podem ser utilizados juntos em uma mesma consulta.

```sql
SELECT
    pedidos.id,
    clientes.nome,
    pedidos.preco
FROM pedidos
INNER JOIN clientes
ON pedidos.id_cliente = clientes.id
WHERE pedidos.preco > 50
ORDER BY pedidos.preco DESC;
```
Essa consulta pode ser entendida como:

"Mostre o ID do pedido, o nome do cliente e o preço, somente para pedidos acima de R$ 50, organizando do maior para o menor preço."
