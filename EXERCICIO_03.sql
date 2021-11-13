--CRIAR VIEW DE COR PRETO
CREATE VIEW cor_preto AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp  
WHERE cor_es = 'Preto';
SELECT * FROM cor_preto -- validando cria��o

--CRIAR VIEW DE COR BEGE
CREATE VIEW cor_bege AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp  
WHERE cor_es = 'Bege';
SELECT * FROM cor_bege -- validando cria��o

--CRIAR VIEW DE COR VINHO
CREATE VIEW cor_vinho AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp  
WHERE cor_es = 'Vinho';
SELECT * FROM cor_vinho -- validando cria��o

--CRIAR VIEW DE COR BRANCO
CREATE VIEW cor_branco AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp  
WHERE cor_es = 'Branco';
SELECT * FROM cor_branco -- validando cria��o

--USANDO OPERADORES DE CONJUNTO SQL PARA GERAR A VIEW - ORDEM: PRETO, BEGE, VINHO E BRANCO
CREATE VIEW estoque_cor AS
SELECT * FROM cor_preto
UNION ALL
SELECT * FROM cor_bege
UNION ALL
SELECT * FROM cor_vinho
UNION ALL
SELECT * FROM cor_branco
SELECT * FROM estoque_cor -- validando cria��o da view pedido no exerc�cio