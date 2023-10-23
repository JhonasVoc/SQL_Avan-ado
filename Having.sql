-- HAVING é usada para filtrar os agrupamentos

SELECT
	ESTADO, 
    SUM(LIMITE_DE_CREDITO) AS SOMA_LIMITE
FROM
	tabela_de_clientes
GROUP BY
	ESTADO
HAVING
	SOMA_LIMITE > 900000;
    
SELECT EMBALAGEM,
	MAX(PRECO_DE_LISTA),
	MIN(PRECO_DE_LISTA)
FROM
	tabela_de_produtos
GROUP BY
	EMBALAGEM;

-- Quais foram os clientes que fizeram mais de 2000 compras em 2016?
SELECT
	CPF, 
    COUNT(*)
FROM	
	notas_fiscais
where
	YEAR(DATA_VENDA) = 2016
group by
	CPF
HAVING
	COUNT(*) > 2000;

