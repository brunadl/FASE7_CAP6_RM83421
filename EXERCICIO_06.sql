--CRIAR VIEW QUE MOSTRE OS PRODUTOS QUE ESTAO NA TABELA DE REPOSICAO MAS NAO ESTAO NA TABELA ESTOQUE, USANDO OPERADOR DE CONJUNTO SQL
CREATE VIEW produtos_rep AS 
SELECT nome_rep AS NOME, cor_rep AS COR, tamanho_rep AS TAMANHO FROM reposicao_tmp
MINUS
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO FROM estoque_tmp

--VALIDAR CRIACAO DA VIEW
SELECT * FROM produtos_rep