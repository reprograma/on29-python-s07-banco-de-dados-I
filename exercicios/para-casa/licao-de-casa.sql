-- criando tabela de livros para referenciar 

CREATE TABLE livros(
  id_livro INTEGER PRIMARY KEY,
  livro TEXT,
  autor TEXT
);
-- inserindo itens na tabela 
INSERT INTO livros (id_livro, livro, autor) VALUES (1, 'Coreografia do Adeus', 'Aline Bei');
INSERT INTO livros (id_livro, livro, autor) VALUES (2, 'A coragem de ser Imperfeito', 'Brené Brown');
INSERT INTO livros (id_livro, livro, autor) VALUES (3, 'O poder do Hábito', 'Charles Duhigg');

-- criando tabela de estoque
CREATE TABLE estoque(
	id INTEGER PRIMARY KEY,
  	livro_id INTEGER,
  	quantidade NUMERIC
);

-- inserindo itens na tabela estoque 
INSERT INTO estoque (id, livro_id, quantidade) VALUES (1, 1, 12);
INSERT INTO estoque (id, livro_id, quantidade) VALUES (2, 2, 22);
INSERT INTO estoque (id, livro_id, quantidade) VALUES (3, 3, 35);

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT 
	livros.livro,
    livros.autor,
    estoque.livro_id,
    estoque.quantidade
FROM
	estoque
JOIN
	livros ON estoque.livro_id = livros.id_livro

-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade + 2
WHERE id = 2

-- Remover unidades do estoque de um livro específico.
DELETE
FROM estoque
WHERE livro_id = 3
