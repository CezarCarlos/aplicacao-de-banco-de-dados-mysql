
-- ACESSANDO O BD
USE DB_T04301_CEZAR_SILVA;

-- TABELA DE FORNECEDOR
CREATE TABLE TB_FORNECEDOR_PADARIA (
	id_fornecedor INT AUTO_INCREMENT PRIMARY KEY,
    nome_fornecedor VARCHAR(100) NOT NULL,
    telefone VARCHAR(20) NOT NULL
);

-- INSERIR INFORMAÇÕES SOBRE OS FORNECEDORES
INSERT INTO TB_FORNECEDOR_PADARIA (nome_fornecedor, telefone)
VALUES ('DONA BENTA', '(11) 92345-4785'),
       ('ROSA MARIA', '(31) 99652-7415'), 
	   ('SÃO PEDRO', '(41) 912345-7899');


-- TABELA DE PRODUTOS
CREATE TABLE TB_PRODUTOS_PADARIA (
	id_produto INT AUTO_INCREMENT PRIMARY KEY,
    id_fornecedor_padaria INT NOT NULL,
    nome_produto VARCHAR(100) NOT NULL,
    preco decimal(8,2) NOT NULL,
    FOREIGN KEY (id_fornecedor_padaria) REFERENCES TB_FORNECEDOR_PADARIA(id_fornecedor)
);

INSERT INTO TB_PRODUTOS_PADARIA (nome_produto, id_fornecedor_padaria, preco)
VALUES ('Sonho', 1, '5.60'),
       ('Lua Mel', 2, '8.90'),
       ('Pão Frances', 3, '0.80');

-- TABELA DE VENDAS
CREATE TABLE TB_VENDAS_PADARIA (
	id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_produto_venda INT NOT NULL,
	quantidade INT NOT NULL,
    data_venda DATE NOT NULL,
    FOREIGN KEY (id_produto_venda) REFERENCES TB_PRODUTOS_PADARIA(id_produto)
);

INSERT INTO TB_VENDAS_PADARIA (id_produto_venda, quantidade, data_venda)
VALUES (1, 10, '2026-06-17'),
       (2, 5, '2026-06-16'),
       (3, 40, '2026-06-15');


SELECT * FROM TB_FORNECEDOR_PADARIA;
SELECT * FROM TB_PRODUTOS_PADARIA;
SELECT * FROM TB_VENDAS_PADARIA;


