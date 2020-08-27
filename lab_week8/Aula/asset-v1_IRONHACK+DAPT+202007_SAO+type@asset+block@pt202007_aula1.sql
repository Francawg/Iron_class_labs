-- COMENTARIO
/* COMENTARIO
PARA MULTIPLAS LINHAS */

CREATE TABLE example_table (nome VARCHAR(50), score SMALLINT);

SELECT * FROM example_table;

INSERT INTO example_table (nome, score) VALUES ('Andre', 10);
SELECT * FROM example_table;

DROP TABLE IF EXISTS example_table;
CREATE TABLE IF NOT EXISTS example_table (nome VARCHAR(50), score SMALLINT, idade SMALLINT);

INSERT INTO example_table (nome, score, idade) VALUES ('Andre', 10, 28);
SELECT * FROM example_table;

INSERT INTO example_table (nome, score) VALUES ('Diego', 9);
SELECT * FROM example_table;

INSERT INTO example_table (nome, idade) VALUES ('Darua', 33);
SELECT * FROM example_table;

INSERT INTO example_table VALUES ('Sonia', 9, 27);
SELECT * FROM example_table;

INSERT INTO example_table VALUES ('Vamp', NULL, 31);
SELECT * FROM example_table;

INSERT INTO example_table VALUES ('Donato', 25);
SELECT * FROM example_table;

CREATE TABLE second_table (carro VARCHAR(10), preco BIGINT);

SELECT * FROM example_table;

DELETE FROM example_table WHERE idade > 30;

SELECT * FROM example_table;

DELETE FROM example_table WHERE idade > 30 OR score > 20;

SELECT * FROM example_table;

DELETE FROM example_table WHERE idade IS NULL;

SELECT * FROM example_table;

UPDATE example_table SET score = 10;

SELECT * FROM example_table;

UPDATE example_table SET score = 20 WHERE nome = 'Andre';

SELECT * FROM example_table;

