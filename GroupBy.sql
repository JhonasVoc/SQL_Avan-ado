-- GROUP BY
SELECT * FROM tabela_de_cliente;

SELECT ESTADO, LIMITE_DE_CREDITO FROM tabela_de_clientes;

SELECT ESTADO, SUM(LIMITE_DE_CREDITO) AS LIMITE_TOTAL
FROM
	tabela_de_clientes
GROUP BY
	ESTADO;

-- mais caro garrafa e mas caro lata
SELECT
	EMBALAGEM,
    MAX(PRECO_DE_LISTA) AS MAIOR_PRECO
FROM 
	tabela_de_produtos
GROUP BY
	embalagem;
    
SELECT EMBALAGEM, COUNT(*) AS CONTADOR
FROM
	tabela_de_produtos 
group by
	EMBALAGEM;

SELECT ESTADO, BAIRRO, SUM(LIMITE_DE_CREDITO) as LIMITE FROM tabela_de_clientes 
WHERE CIDADE = 'Rio de Janeiro' 
GROUP BY ESTADO, BAIRRO 
ORDER BY BAIRRO;

-- Qual (ou quais) foi (foram) a(s) maior(es) venda(s) do produto “Linha Refrescante - 1 Litro - Morango/Limão”, em quantidade? (Obtenha este resultado usando 2 SQLs).
-- encontranco código
SELECT * FROM tabela_de_produtos WHERE nome_do_produto = 'Linha Refrescante - 1 Litro - Morango/Limão';
SELECT * FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' ORDER BY QUANTIDADE DESC;

-- Aproveitando o exercício do vídeo anterior (maior quantidade vendida) quantos itens de venda existem para o produto '1101035' ?
SELECT MAX(`QUANTIDADE`) as 'MAIOR QUANTIDADE' FROM itens_notas_fiscais WHERE `CODIGO_DO_PRODUTO` = '1101035' ;
SELECT COUNT(*) FROM itens_notas_fiscais WHERE codigo_do_produto = '1101035' AND QUANTIDADE = 99;




