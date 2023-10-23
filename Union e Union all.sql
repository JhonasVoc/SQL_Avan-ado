-- Para usar o Union, o número de campos e tipos devem ser iguais
-- O UNION aplica um distinct, já o union all não

-- UNION
SELECT DISTINCT BAIRRO
FROM	
	tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO
FROM
	tabela_de_vendedores;
-- UNION ALL
SELECT DISTINCT BAIRRO
FROM	
	tabela_de_clientes
UNION ALL
SELECT DISTINCT BAIRRO
FROM
	tabela_de_vendedores;
-- Union com alias

SELECT DISTINCT BAIRRO,NOME, 'Cliente' as TIPO
FROM
	tabela_de_clientes
UNION
SELECT DISTINCT BAIRRO, NOME, 'Vendedor' as TIPO
FROM	
	tabela_de_vendedores;
    
