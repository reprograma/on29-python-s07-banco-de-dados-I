CREATE TABLE livros(
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
 );
 
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

SELECT * FROM livros

CREATE TABLE estoque(
  id INTEGER PRIMarY KEY,
  livros_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livros_id) REFERENCES livros(id)
);

DROP TABLE estoque -- Fiz esse comando pois errei uma informação na tabela estoque

INSERT INTO estoque (id, livros_id, quantidade) VALUES (1, 1, 3);
INSERT INTO estoque (id, livros_id, quantidade) VALUES (2, 2, 5);
INSERT INTO estoque (id, livros_id, quantidade) VALUES (3, 3, 2);

select * FROM estoque

--1. Obter a quantidade disponível em estoque para um determinado livro.
SELECT
	estoque.livros_id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
from
	estoque
JOIN 
    livros ON estoque.livros_id = livros.id;
    
SELECT quantidade FROM estoque WHERE livros_id = 1;
SELECT quantidade FROM estoque WHERE livros_id = 2;
SELECT quantidade FROM estoque WHERE livros_id = 3;
SELECT quantidade FROM estoque WHERE livros_id = 4;

    
--2. Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = 9 WHERE id = 2;
UPDATE estoque SET quantidade = 57 WHERE id = 3;
UPDATE estoque SET quantidade = 2 WHERE id = 1;
UPDATE estoque SET quantidade = quantidade + 10 WHERE livros_id = 3
--SELECT * FROM estoque
SELECT
 	estoque.livros_id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
from
	estoque
JOIN 
    livros ON estoque.livros_id = livros.id;
--3. Remover unidades do estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade - 1 WHERE livros_id = 1;
UPDATE estoque SET quantidade = quantidade - 1 WHERE livros_id = 2;
UPDATE estoque SET quantidade = quantidade - 1 WHERE livros_id = 3;
--Deletando um registro
DELETE FROM estoque WHERE id = 3;
--O comando DROP TABLE exclui por completo uma tabela do banco de dados.
--O comando DELETE exclui apenas os registros armazenados em uma tabela do banco de dados.
SELECT
	estoque.livros_id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
from
	estoque
JOIN 
    livros ON estoque.livros_id = livros.id;
    
 -- Adicionando novamente os dados do livro id = 3
 
INSERT INTO estoque (id, livros_id, quantidade) VALUES (3, 3, 2);

SELECT COUNT(livros_id) FROM estoque; -- comando mostra a quantidade total de registros de livros

--Inserindo mais um registro na tabela livros para aumentar a quantidade de opções
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Atonement', 'Ian McEwan', 2001, 111.99);
NSERT INTO estoque (id, livros_id, quantidade) VALUES (4, 4, 7);

--Rodar novamente o comando:
--1
SELECT
	estoque.livros_id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
from
	estoque
JOIN 
    livros ON estoque.livros_id = livros.id;
--2
SELECT COUNT(livros_id) FROM estoque;


