--CRIAR TABELA DE TAMANHO PP
CREATE TABLE tamanho_pp AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp  
WHERE tamanho_es = 'PP';
SELECT * FROM tamanho_pp -- validando cria��o

--CRIAR TABELA DE TAMANHO P
CREATE TABLE tamanho_p AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp 
WHERE tamanho_es = 'P';
SELECT * FROM tamanho_p -- validando cria��o

--CRIAR TABELA DE TAMANHO EG
CREATE TABLE tamanho_eg AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp 
WHERE tamanho_es = 'EG';
SELECT * FROM tamanho_eg -- validando cria��o

--CRIAR TABELA DE TAMANHO M
CREATE TABLE tamanho_m AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp 
WHERE tamanho_es = 'M';
SELECT * FROM tamanho_m -- validando cria��o

--CRIAR TABELA DE TAMANHO G
CREATE TABLE tamanho_g AS 
SELECT nome_es AS NOME, cor_es AS COR, tamanho_es AS TAMANHO, quant_es AS QUANTIDADE  FROM estoque_tmp 
WHERE tamanho_es = 'G';
SELECT * FROM tamanho_g -- validando cria��o

--USANDO OPERADORES DE CONJUNTO SQL PARA GERAR O RELAT�RIO - ORDEM: PP, P, EG, M E G
CREATE TABLE estoque_tamanho AS 
SELECT * FROM tamanho_pp
UNION ALL
SELECT * FROM tamanho_P
UNION ALL
SELECT * FROM tamanho_eg
UNION ALL
SELECT * FROM tamanho_m
UNION ALL
SELECT * FROM tamanho_g
SELECT * FROM estoque_tamanho -- validando cria��o do relat�rio pedido no exerc�cio