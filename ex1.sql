CREATE DATABASE db_rh;

USE db_rh;

CREATE TABLE tb_rh(
    id bigint auto_increment,
	nome varchar(255) not null,
    email text,
    telefone varchar(255) not null,
	idade int,
	salario decimal not null,
    PRIMARY KEY (id)
);

INSERT INTO tb_rh(nome, email, telefone, idade, salario)
VALUES ("Lucas", "lucas@gmail.com", "12345678", 19, 1300.00);
INSERT INTO tb_rh(nome, email, telefone, idade, salario)
VALUES ("Camila", "mila@gmail.com", "23456789", 20, 1000.00);
INSERT INTO tb_rh(nome, email, telefone, idade, salario)
VALUES ("Carolina", "carol@gmail.com", "45678910", 23, 1100.00), ("Kauan", "kauan@gmail.com", "12345698", 30, 2000.00), ("Rafael", "rafa@gmail.com", "55647890", 25, 2500.00);

SELECT * FROM tb_rh WHERE salario > 2000.00;

UPDATE tb_rh SET salario = 2000.00 WHERE id = 1;

SELECT * FROM tb_rh WHERE id = 1;
