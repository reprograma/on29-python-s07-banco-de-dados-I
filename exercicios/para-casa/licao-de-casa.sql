-- creat table 'estoque'

CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  ); 

-- inserindo dados na tabela 'estoque' e visualizando

INSERT into estoque (id, livro_id, quantidade) VALUES (1, 1, 10);
INSERT INTO estoque (id, livro_id, quantidade) VALUES (2, 2, 5);
INSERT into estoque (id, livro_id, quantidade) VALUES (3, 3, 7);

SELECT * FROM estoque;

-- 1. Obter a quantidade disponível em estoque para um determinado livro.

SELECT estoque.livro_id, livros.titulo, estoque.quantidade
FROM estoque
JOIN livros ON estoque.livro_id = livros.id
WHERE estoque.livro_id = 1;

-- 2. Adicionar unidades ao estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade + 3
WHERE id = 1;

-- 3. Remover unidades do estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade - 2
WHERE id = 2;

