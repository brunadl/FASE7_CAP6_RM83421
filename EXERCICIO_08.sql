---SELECT DISTINCT nome_rep FROM reposicao_tmp -- validando nomes de produtos da tabela reposicao_tmp: Hot Pants, Skinny e Cropped

--CRIAR TABELA PARTICIONADA
CREATE TABLE REPOSICAO_PARTICIONADO
(nome_rep     VARCHAR2(20),
cor_rep      VARCHAR2(12),
tamanho_rep  CHAR(3),
quant_rep    NUMBER(5))
 
PARTITION BY LIST (nome_rep)
(PARTITION hot_pants
VALUES ('Hot Pants')
TABLESPACE users,
PARTITION skinny
VALUES ('Skinny')
TABLESPACE users,
PARTITION cropped
VALUES ('Cropped')
TABLESPACE users);

--VALIDAR CRIACAO DE TABELA PARTICIONADA
SELECT TABLE_NAME, PARTITION_NAME FROM ALL_TAB_PARTITIONS
WHERE TABLE_NAME = 'REPOSICAO_PARTICIONADO'