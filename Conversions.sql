-- formatação de dados  DATE_FORMAT https://dev.mysql.com/doc/refman/8.0/en/date-and-time-functions.html#function_date-format


SELECT current_timestamp() AS RESULTADO;

SELECT CONCAT( 'O dia de hoje é : ', CURRENT_TIMESTAMP()) AS RESULTADO;

SELECT  CONCAT( 'O dia de hoje é : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%Y')) AS RESULTADO;

SELECT  CONCAT( 'O dia de hoje é : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%y')) AS RESULTADO;

SELECT  CONCAT( 'O dia de hoje é : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%m/%y')) AS RESULTADO;

SELECT  CONCAT( 'O dia de hoje é : ', DATE_FORMAT(CURRENT_TIMESTAMP(), '%d/%m/%y')) AS RESULTADO;

SELECT CONCAT('O dia de hoje é: ', 
DATE_FORMAT(CURRENT_TIMESTAMP(),'%d/%m/%Y - %U') ) AS RESULTADO;

SELECT CONVERT(24.4, CHAR) AS RESULTADO;

SELECT SUBSTRING(CONVERT(24.4, CHAR),1,1) AS RESULTADO;

-- Queremos construir um SQL cujo resultado seja, para cada cliente:
-- “O cliente João da Silva faturou 120000 no ano de 2016

SELECT CONCAT('O cliente ', TC.NOME, ' faturou ', 
CAST(SUM(INF.QUANTIDADE * INF.preco) AS char (20))
 , ' no ano ', CAST(YEAR(NF.DATA_VENDA) AS char (20))) AS SENTENCA FROM notas_fiscais NF
INNER JOIN itens_notas_fiscais INF ON NF.NUMERO = INF.NUMERO
INNER JOIN tabela_de_clientes TC ON NF.CPF = TC.CPF
WHERE YEAR(DATA_VENDA) = 2016
GROUP BY TC.NOME, YEAR(DATA_VENDA)

