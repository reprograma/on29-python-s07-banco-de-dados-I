-- Gerenciamento de Estoque de Livros
-- criar uma tabela chamada estoque
CREATE TABLE estoque (
	id INTEGER PRIMARY KEY,
  	livros_id INTEGER,
  	quantidade INTEGER
);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT * from estoque; -- selecionar tudo do estoque

-- Adicionar unidades ao estoque de um livro específico.
INSERT INTO estoque (id, livros_id, quantidade) VALUES (1, 234, 11), 
INSERT INTO estoque (id, livros_id, quantidade) VALUES (2, 345, 9), 
INSERT INTO estoque (id, livros_id, quantidade) VALUES (3, 456, 17),
INSERT INTO estoque (id, livros_id, quantidade) VALUES (4, 567, 13),
INSERT INTO estoque (id, livros_id, quantidade) VALUES (5, 678, 21);

-- Remover unidades do estoque de um livro específico.
DELETE from estoque where id = 5