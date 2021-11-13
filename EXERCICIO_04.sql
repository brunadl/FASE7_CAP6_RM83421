---SELECT DISTINCT cor_es FROM estoque_tmp -- validando as cores disponíveis: preto, vinho, bege, azul, verde e branco

--CRIAR TABELA PARTICIONADA
CREATE TABLE ESTOQUE_PARTICIONADO
(nome_es     VARCHAR2(20),
cor_es      VARCHAR2(12),
tamanho_es  CHAR(3),
quant_es    NUMBER(5))
 
PARTITION BY LIST (cor_es)
(PARTITION calca_colorida
VALUES ('Vinho','Verde','Azul','Preto')
TABLESPACE users,
PARTITION calca_neutra
VALUES ('Branco','Bege')
TABLESPACE users);

--VALIDAR CRIACAO DE TABELA PARTICIONADA
SELECT TABLE_NAME, PARTITION_NAME FROM ALL_TAB_PARTITIONS
WHERE TABLE_NAME = 'ESTOQUE_PARTICIONADO'