-- 1. Criar a tabela estoque

CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
);

---------------------------------------------------------------------------------

-- 2. Inserir alguns registros de estoque para teste.

INSERT INTO estoque (livro_id, quantidade) VALUES (2, 4);
INSERT INTO estoque (livro_id, quantidade) VALUES (8, 7);
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 3);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 2);
INSERT INTO estoque (livro_id, quantidade) VALUES (10, 1);
INSERT INTO estoque (livro_id, quantidade) VALUES (5, 3);
INSERT INTO estoque (livro_id, quantidade) VALUES (7, 5);
INSERT INTO estoque (livro_id, quantidade) VALUES (4, 2);
INSERT INTO estoque (livro_id, quantidade) VALUES (6, 2);
INSERT INTO estoque (livro_id, quantidade) VALUES (9, 3);

---------------------------------------------------------------------------------

-- 3.1. Obter a quantidade disponível em estoque para um determinado livro.

SELECT quantidade FROM estoque WHERE livro_id = 3; 
-- nesse caso, obtive a quantidade em estoque do livro de id 3

---------------------------------------------------------------------------------

-- 3.2. Adicionar unidades ao estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade + 1 WHERE livro_id = 4 
-- nesse caso, adicionei uma unidade ao estoque do livro de id 4

---------------------------------------------------------------------------------

-- 3.3. Remover unidades do estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade - 2 WHERE livro_id = 8
-- nesse caso, removi duas unidades do estoque do livro de id 8