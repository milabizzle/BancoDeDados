CREATE DATABASE db_farmacia_bemstar;

USE db_farmacia_bemstar;

CREATE TABLE tb_produtos(
id bigint auto_increment,
nome varchar(255) not null,
preco decimal not null,
quantidade int,
PRIMARY KEY (id)
);

CREATE TABLE tb_categorias(
id bigint auto_increment,
tipo text,
PRIMARY KEY (id)
);
     
ALTER TABLE tb_produtos ADD categorias_id bigint;

ALTER TABLE tb_produtos ADD CONSTRAINT fk_produtos_categorias
FOREIGN KEY (categorias_id) REFERENCES tb_categorias (id);

INSERT INTO tb_categorias(tipo)
VALUES ("higiene"), ("medicacao"), ("skincare"), ("make"), ("cabelo");

INSERT INTO tb_produtos(nome, preco, quantidade, categorias_id)
VALUES ("Dipirona", 6.00, 1, 2), ("hidratante", 30.00, 1, 3), ("shampoo", 13.00, 2, 5), ("fralda RN", 150.00, 2, 1);
INSERT INTO tb_produtos(nome, preco, quantidade, categorias_id)
VALUES ("Cor&Tom", 20.00, 1, 5), ("Amoxilina", 50.00, 1, 2), ("Whey Protein", 200.00, 1, 2), ("Blush", 40.00, 1, 3);

select * from tb_produtos;

SELECT nome, preco from tb_produtos WHERE preco > 50.00;
SELECT nome, preco from tb_produtos WHERE preco > 5.00 and preco < 60.00;
SELECT nome, preco, quantidade from tb_produtos WHERE nome like 'c%';