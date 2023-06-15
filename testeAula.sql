CREATE DATABASE db_quitanda;

USE db_quitanda;

CREATE TABLE tb_produtos(
    id bigint auto_increment,
	nome varchar(255) not null,
	quantidade int,
	preco decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_produtos(nome, quantidade, preco)
VALUES ("tomate", 100, 8.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("maçã",20, 5.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("laranja",50, 10.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("banana",200, 12.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",1200, 30.00);
INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("pêra",500, 2.99);

INSERT INTO tb_produtos(nome, quantidade, preco) 
values ("uva",300, 7.00), ("româ",600, 9.00);

SELECT * FROM tb_produtos;
SELECT * FROM tb_produtos where id = 5;
SELECT * FROM tb_produtos where nome = "maca";

DELETE FROM tb_produtos WHERE id = 4;
