

-- ACESSAR O BD
USE DB_T04301_CEZAR_SILVA;

-- CRIAR TABELAS
-- FORNECEDOR -> id_fornecedor, nome, cnpj, responsavel
CREATE TABLE TB_FORNECEDOR_PAPELARIA (
	id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornecedor VARCHAR(200) NOT NULL,
    cnpj VARCHAR(14) NOT NULL,
    responsavel VARCHAR(100) NOT NULL
);

-- INSERIR REGISTROS NA TABELA DE PRODUTOS
INSERT INTO TB_FORNECEDOR_PAPELARIA (nome_fornecedor, cnpj, responsavel)
VALUES ('Faber Castel', '12345678901234', 'Ronaldo'),
	   ('Bic', '98765432109874', 'Leila');

-- CONSULTAR AS INFORMAÇÕES NA TABELA PRODUTOS
SELECT * FROM TB_FORNECEDOR_PAPELARIA;

-- PRODUTOS -> id_produto, nome_produto, id_fornecedor_produto
CREATE TABLE TB_PRODUTOS_PAPELARIA (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    nome_produto VARCHAR(100) NOT NULL,
    id_fornecedor_produto INT NOT NULL,
    FOREIGN KEY (id_fornecedor_produto) 
    REFERENCES TB_FORNECEDOR_PAPELARIA(id_fornecedor)
);

-- INSERIR REGISTROS NA TABELA DE PRODUTOS
INSERT INTO TB_PRODUTOS_PAPELARIA (nome_produto, id_fornecedor_produto)
VALUES ('Lapis de Colorir', 1),
       ('Caneta', 2);
       
-- CONSULTA A TABELA DE PRODUTOS
SELECT * FROM TB_PRODUTOS_PAPELARIA;

-- INSERIR NOVO REGISTRO DE UM FORNECEDOR QUE NAO EXISTE
INSERT INTO TB_PRODUTOS_PAPELARIA (nome_produto, id_fornecedor_produto)
VALUES ('Lapiseira', 3);

-- VENDAS -> id_venda, id_produto_venda, data_venda, qtde
CREATE TABLE TB_VENDAS_PAPELARIA (
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto_venda INT NOT NULL,
    data_venda DATE NOT NULL,
    qtde INT NOT NULL,
	FOREIGN KEY (id_produto_venda) 
    REFERENCES TB_PRODUTOS_PAPELARIA(id_produto)
);

-- INSERIR REGISTROS NA TABELA DE VENDAS
INSERT INTO TB_VENDAS_PAPELARIA (id_produto_venda, data_venda, qtde)
VALUES (1, '2026-06-12', 20),
       (2, '2026-06-16', 30);
       
SELECT * FROM TB_VENDAS_PAPELARIA;



