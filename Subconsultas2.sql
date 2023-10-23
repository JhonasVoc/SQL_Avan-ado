-- Os maiores preços agrupados por embalagem
SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM;

-- SELECIONANDO OS MAIORES PREÇOS POR EMBALAGEM MAIORES QUE 10
SELECT X.EMBALAGEM, X.MAIOR_PRECO 
FROM
	(SELECT EMBALAGEM, MAX(PRECO_DE_LISTA) AS MAIOR_PRECO FROM tabela_de_produtos
GROUP BY EMBALAGEM) X
WHERE 
	X.MAIOR_PRECO  >= 10;
-- CRIAMOS NOSSA VIEW DE MAIORES PREÇO POR EMBALAGEM
-- repetindo maiores preços por embalagem maiores que 10 com a view
SELECT X.EMBALAGEM, X.MAIOR_PRECO FROM
vw_maiores_embalagens X WHERE X.MAIOR_PRECO >= 10;

-- usando join com a view
-- Comparando os preços de cada produto  com o maior preço por embalagem
SELECT
	A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO
FROM
	tabela_de_produtos A
JOIN
	vw_maiores_embalagens X ON A.EMBALAGEM = X.EMBALAGEM;

-- criando indicador de porcetagemm para comparar o preço com o maior preço por embalagem
SELECT
	A.NOME_DO_PRODUTO, A.EMBALAGEM, A.PRECO_DE_LISTA, X.MAIOR_PRECO,
    ((A.PRECO_DE_LISTA / X.MAIOR_PRECO) -1) * 100 AS PERCENTUAL
FROM
	tabela_de_produtos A
JOIN
	vw_maiores_embalagens X on X.embalagem = A.EMBALAGEM;

