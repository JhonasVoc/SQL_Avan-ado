-- Subconsultas

-- Checkando os bairros de vendedores
SELECT DISTINCT BAIRRO FROM tabela_de_vendedores;
 -- exemplo manual da aplicação
SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN ('Tijuca','Jardins','Copacabana','Santo Amaro');
-- com a subconsulta
SELECT * FROM tabela_de_clientes WHERE BAIRRO 
IN (SELECT DISTINCT BAIRRO FROM tabela_de_vendedores);

-- maiores preços por embalagem
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) as PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM;
-- agora eu entendi
-- nós usamos uma consulta como se fosse literalmente uma tabela
-- no caso abaixo, x é nossa tabea com os preços maximos por embalagem
SELECT X.EMBALAGEM, X.PRECO_MAXIMO FROM 
(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS PRECO_MAXIMO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X WHERE X.PRECO_MAXIMO >= 10;
