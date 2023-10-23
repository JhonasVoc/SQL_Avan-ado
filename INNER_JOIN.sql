-- JOINS
-- INNER JOIN
SELECT *
FROM
	tabela_de_vendedores a
JOIN
	notas_fiscais nf ON nf.matricula = a.MATRICULA;
 -- Crosstab é igual join (não usar )
SELECT
	tv.MATRICULA,
    tv.NOME,
    COUNT(*) -- não preciso identificar a tabela no count
FROM
	tabela_de_vendedores tv, notas_fiscais nf
WHERE
	tv.MATRICULA = nf.MATRICULA
GROUP BY
	tv.MATRICULA,tv.NOME;
-- faturamento anual
SELECT YEAR(DATA_VENDA), SUM(QUANTIDADE * PRECO) AS FATURAMENTO
FROM notas_fiscais NF INNER JOIN itens_notas_fiscais INF 
ON NF.NUMERO = INF.NUMERO
GROUP BY YEAR(DATA_VENDA)
    

	