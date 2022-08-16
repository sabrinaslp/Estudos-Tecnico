/* -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ITEM 1: Realize ajustes na consulta (colunas, junções, comparações etc.). 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

/***
consulta para um relatório de todas as vendas pagas em dinheiro. 
Necessários para o relatório data da venda, valor total; produtos vendidos, quantidade e valor unitário; nome do cliente, cpf e telefone.
Ordena-se pela data de venda, as mais recentes primeiro.
**/
SELECT v.data AS 'Data da venda', v.valor_total AS 'Valor total', p.nome AS 'Produtos vendidos', iv.quantidade AS Quantidade, iv.valor_unitario AS 'Valor unitário', 
		c.nome AS Cliente, c.cpf AS CPF, c.telefone AS Telefone
FROM venda v 
INNER JOIN item_venda iv INNER JOIN produto p INNER JOIN cliente c INNER JOIN funcionario f
ON v.id = iv.venda_id AND c.id = v.cliente_id AND p.id = iv.produto_id AND f.id = v.funcionario_id 
WHERE tipo_pagamento = 'D'
ORDER BY data DESC;

/***
consulta para encontrar todas as vendas de produtos de um dado fabricante
Mostrar dados do produto, quantidade vendida, data da venda.
Ordena-se pelo nome do produto.
***/
SELECT p.nome AS 'Nome do produto', p.descricao AS Descricao, p.fabricante AS Fabricante, iv.quantidade AS 'Quantidade vendida', v.data AS 'Data da venda'
FROM produto p INNER JOIN item_venda iv INNER JOIN venda v
ON p.id = iv.produto_id AND v.id = iv.venda_id 
WHERE p.fabricante like '%lar%'
ORDER BY p.nome;

/***
Relatório de vendas de produto por cliente.
Mostrar dados do cliente, dados do produto e valor e quantidade totais de venda ao cliente de cada produto.
*/
SELECT c.nome AS Cliente, c.cpf AS CPF, c.telefone AS Telefone, p.nome AS Produto, p.descricao AS Descricao, p.fabricante AS Fabricante,
		SUM(iv.subtotal) AS 'Valor total', SUM(iv.quantidade) AS 'Quantidade total'
FROM produto p INNER JOIN item_venda iv INNER JOIN venda v INNER JOIN cliente c
ON p.id = iv.produto_id AND v.id = iv.venda_id AND c.id = v.cliente_id 
GROUP BY c.nome, p.nome;


/* -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ITEM 2: Crie índices para colunas que possam se beneficiar do recurso para melhorar o desempenho das consultas. 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
-- Consultando sem o índice:
EXPLAIN SELECT * FROM venda WHERE tipo_pagamento = 'C';

-- Criação dos índices 
CREATE INDEX idx_tipo_pagamento ON venda(tipo_pagamento);
CREATE INDEX idx_valor_total ON venda(valor_total);
CREATE INDEX idx_produto ON produto(nome);
CREATE INDEX idx_quantidade ON item_venda(quantidade);
CREATE INDEX idx_fabricante ON produto(fabricante);
CREATE INDEX idx_data ON venda(data);

/* -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ITEM 3: Mostre detalhes da execução da consulta (EXPLAIN), com dados de linhas percorridas, antes e depois das otimizações. 
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/
-- Consultando com o índice:
EXPLAIN SELECT * FROM venda WHERE tipo_pagamento = 'C';

-- Obs.: Print da consulta COM e SEM o índex está na pasta nomeado como 'Consultas com e sem index'

/* -----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
ITEM 4: Crie uma view para cada uma das consultas ajustadas.
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------*/

-- Consulta 1: consulta para um relatório de todas as vendas pagas em dinheiro.
CREATE VIEW view_pago_dinheiro AS 
SELECT v.data AS 'Data da venda', v.valor_total AS 'Valor total', p.nome AS 'Produtos vendidos', iv.quantidade AS Quantidade, iv.valor_unitario 
		AS 'Valor unitário', c.nome AS Cliente, c.cpf AS CPF, c.telefone AS Telefone
FROM venda v 
INNER JOIN item_venda iv INNER JOIN produto p INNER JOIN cliente c INNER JOIN funcionario f
ON v.id = iv.venda_id AND c.id = v.cliente_id AND p.id = iv.produto_id AND f.id = v.funcionario_id 
WHERE tipo_pagamento = 'D'
ORDER BY data DESC;

SELECT * FROM view_pago_dinheiro;

-- Consulta 2: consulta para encontrar todas as vendas de produtos de um dado fabricante.
CREATE VIEW view_venda_fabricante AS
SELECT p.nome AS 'Nome do produto', p.descricao AS Descricao, p.fabricante AS Fabricante, iv.quantidade AS 'Quantidade vendida', v.data AS 'Data da venda'
FROM produto p INNER JOIN item_venda iv INNER JOIN venda v
ON p.id = iv.produto_id AND v.id = iv.venda_id 
WHERE p.fabricante like '%lar%'
ORDER BY p.nome;

SELECT * FROM view_venda_fabricante;

-- Consulta 3: consulta para relatório de vendas de produto por cliente.
CREATE VIEW view_produto_cliente AS
SELECT c.nome AS Cliente, c.cpf AS CPF, c.telefone AS Telefone, p.nome AS Produto, p.descricao AS Descricao, p.fabricante AS Fabricante,
		SUM(iv.subtotal) AS 'Valor total', SUM(iv.quantidade) AS 'Quantidade total'
FROM produto p INNER JOIN item_venda iv INNER JOIN venda v INNER JOIN cliente c
ON p.id = iv.produto_id AND v.id = iv.venda_id AND c.id = v.cliente_id 
GROUP BY c.nome, p.nome;

SELECT * FROM view_produto_cliente;