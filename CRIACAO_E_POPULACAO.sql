--CRIAR TABELA ESTOQUE
CREATE TABLE estoque_tmp
(nome_es     VARCHAR2(20),
cor_es      VARCHAR2(12),
tamanho_es  CHAR(3),
quant_es    NUMBER(5));

--POPULAR TABELA ESTOQUE
INSERT INTO estoque_tmp VALUES ('Cigarrete','Azul','EG',2);
INSERT INTO estoque_tmp VALUES ('Cigarrete','Bege','M',4);
INSERT INTO estoque_tmp VALUES ('Cigarrete','Branco','EGG',2);
INSERT INTO estoque_tmp VALUES ('Cigarrete','Verde','EG',3);
INSERT INTO estoque_tmp VALUES ('Cigarrete','Vinho','P',7);
INSERT INTO estoque_tmp VALUES ('Cigarrete','Preto','P',4);
INSERT INTO estoque_tmp VALUES ('Cropped','Azul','G',4);
INSERT INTO estoque_tmp VALUES ('Cropped','Branco','M',4);
INSERT INTO estoque_tmp VALUES ('Cropped','Preto','PP',8);
INSERT INTO estoque_tmp VALUES ('Flare','Bege','M',7);
INSERT INTO estoque_tmp VALUES ('Flare','Branco','P',5);
INSERT INTO estoque_tmp VALUES ('Flare','Preto','GG',4);
INSERT INTO estoque_tmp VALUES ('Flare','Azul','GG',2);
INSERT INTO estoque_tmp VALUES ('Flare','Verde','G',2);
INSERT INTO estoque_tmp VALUES ('Flare','Vinho','P',4);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Bege','P',5);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Bege','EG',4);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Branco','P',4);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Preto','PP',7);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Verde','PP',5);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Verde','M',7);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Verde','G',4);
INSERT INTO estoque_tmp VALUES ('Hot Pants','Vinho','EGG',1);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Azul','EGG',2);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Bege','M',5);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Bege','G',3);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Branco','G',7);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Branco','GG',3);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Preto','PP',5);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Preto','EGG',3);
INSERT INTO estoque_tmp VALUES ('Pantacourt','Vinho','GG',3);
INSERT INTO estoque_tmp VALUES ('Skinny','Azul','EG',1);
INSERT INTO estoque_tmp VALUES ('Skinny','Bege','PP',3);
INSERT INTO estoque_tmp VALUES ('Skinny','Bege','EG',1);
INSERT INTO estoque_tmp VALUES ('Skinny','Preto','EGG',1);
INSERT INTO estoque_tmp VALUES ('Skinny','Vinho','PP',8);

 --CRIAR TABELA REPOSICAO
CREATE TABLE reposicao_tmp
(nome_rep     VARCHAR2(20),
cor_rep      VARCHAR2(12),
tamanho_rep  CHAR(3),
quant_rep    NUMBER(5));

--POPULAR TABELA REPOSICAO
INSERT INTO reposicao_tmp VALUES ('Hot Pants','Vinho','EGG',3);
INSERT INTO reposicao_tmp VALUES ('Skinny','Azul','EG',2);
INSERT INTO reposicao_tmp VALUES ('Skinny','Bege','EG',4);
INSERT INTO reposicao_tmp VALUES ('Skinny','Preto','EGG',2);
INSERT INTO reposicao_tmp VALUES ('Cropped','Verde','G',4);

COMMIT;

--VALIDAR CRIACAO E POPULACAO DA TABELA
---SELECT * FROM estoque_tmp
---SELECT * FROM reposicao_tmp