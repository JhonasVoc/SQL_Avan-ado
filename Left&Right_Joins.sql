-- LEFT E RIGH JOIN 
SELECT CPF, COUNT(*) FROM notas_fiscais GROUP BY CPF;

SELECT DISTINCT tc.CPF,tc.NOME,nf.CPF
FROM
	tabela_de_clientes tc
JOIN
	notas_fiscais nf ON tc.CPF =nf.CPF;
  
 -- left join 
 -- CLIENTE QUE NUNCA COMPROU
SELECT DISTINCT tc.CPF,tc.NOME,nf.CPF
FROM
	tabela_de_clientes tc
LEFT JOIN
	notas_fiscais nf ON tc.CPF =nf.CPF;
    
-- RIGHT JOIN SÓ INVERTENDO ORDEM TABELA
SELECT DISTINCT tc.CPF,tc.NOME,nf.CPF
FROM
	notas_fiscais nf
RIGHT JOIN
	tabela_de_clientes tc ON tc.CPF =nf.CPF;
    
    