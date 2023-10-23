-- O alias ou a identificação da tabela só é necessária quando há campos iguias em diferentes tabelas
-- verificando quanto clientes tem na tabela
select count(*) from tabela_de_clientes;
-- conferindo quais vendedor e cliente tem bairros iguais
SELECT * 
FROM
	tabela_de_vendedores 
JOIN
	tabela_de_clientes
ON
	tabela_de_vendedores.BAIRRO = tabela_de_clientes.BAIRRO;
--
    
SELECT vd.BAIRRO, VD.NOME,TC.BAIRRO,TC.NOME
FROM
	tabela_de_vendedores vd
JOIN
	tabela_de_clientes tc ON vd.BAIRRO = tc.BAIRRO;
-- NESSA QUERY é possivel ver que a Roberta tem escritório em copabana , mas n tem nenhum cliente la
SELECT vd.BAIRRO, VD.NOME,TC.BAIRRO,TC.NOME,DE_FERIAS
FROM
	tabela_de_vendedores vd
LEFT JOIN
	tabela_de_clientes tc ON vd.BAIRRO = tc.BAIRRO;
-- Conferindo quais bairros tem cliente, mas nao vendedores
 SELECT vd.BAIRRO, VD.NOME,TC.BAIRRO,TC.NOME,DE_FERIAS
FROM
	tabela_de_vendedores vd
RIGHT JOIN
	tabela_de_clientes tc ON vd.BAIRRO = tc.BAIRRO;   
-- FULL JOIN não é suportado pelo MySQL, mas da para suar left e right com union
SELECT vd.BAIRRO, VD.NOME,TC.BAIRRO,TC.NOME,DE_FERIAS
FROM
	tabela_de_vendedores vd
LEFT JOIN
	tabela_de_clientes tc ON vd.BAIRRO = tc.BAIRRO
UNION
 SELECT vd.BAIRRO, VD.NOME,TC.BAIRRO,TC.NOME,DE_FERIAS
FROM
	tabela_de_vendedores vd
RIGHT JOIN
	tabela_de_clientes tc ON vd.BAIRRO = tc.BAIRRO;  

