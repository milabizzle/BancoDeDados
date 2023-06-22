CREATE DATABASE db_gen_game_online;

USE db_gen_game_online;

CREATE TABLE tb_classes (
id bigint auto_increment,
elemento text,
PRIMARY KEY (id)
);

INSERT INTO tb_classes(elemento)
VALUES ("ar"), ("fogo");

CREATE TABLE tb_personagens (
id bigint auto_increment,
nome varchar(255) not null,
tipo text,
ataque int,
defesa int,
PRIMARY KEY (id)
);

ALTER TABLE tb_personagens ADD classes_id bigint;
ALTER TABLE tb_personagens ADD CONSTRAINT fk_personagens_classes
FOREIGN KEY (classes_id) REFERENCES tb_classes (id);

INSERT INTO tb_classes(elemento)
VALUES ("terra");
INSERT INTO tb_classes(elemento)
VALUES ("agua"), ("fantasma"), ("galaxia"), ("gás");

INSERT INTO tb_personagens (
nome, tipo, ataque, defesa, classes_id
) VALUES ("Pitaya", "magia", 3000, 10000, 4), ("Diana", "natureza", 4000, 15000, 3);
INSERT INTO tb_personagens (
nome, tipo, ataque, defesa, classes_id
) VALUES ("Dragon", "magia", 1000, 9000, 2), ("Loyal", "natureza", 1000, 11000, 1);
INSERT INTO tb_personagens (
nome, tipo, ataque, defesa, classes_id
) VALUES ("Pedro", "natureza", 5000, 15000, 3), ("Birieta", "química", 2000, 9000, 7);
INSERT INTO tb_personagens (
nome, tipo, ataque, defesa, classes_id
) VALUES ("Stela", "extraterrestre", 9000, 50000, 6), ("Sombra", "morte", 5000, 10000, 5);

select * from tb_personagens;

SELECT nome, ataque from tb_personagens WHERE ataque > 2000;
SELECT nome, defesa from tb_personagens WHERE defesa > 1000 and defesa < 2000;
SELECT nome, ataque, defesa from tb_personagens WHERE nome like 'c%';

SELECT nome, tipo, ataque, defesa from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id;

SELECT nome, elemento from tb_personagens
INNER JOIN tb_classes ON tb_classes.id = tb_personagens.classes_id WHERE elemento = "terra";








