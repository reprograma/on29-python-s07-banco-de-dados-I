-- Criando a tabela estoque
CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserindo registros na tabela estoque
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 30);  -- 30 unidades do livro com id 1 (Dom Quixote)
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 12);  -- 12 unidades do livro com id 2 (Orgulho e Preconceito)
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 65);  -- 65 unidades do livro com id 3 (1984)

-- CONSULTAS SQL
-- 1. Quantidade em estoque para determinado livro
SELECT quantidade
FROM estoque
WHERE livro_id = 3;

-- 2. Adicionando unidades ao estoque de um livro 
UPDATE estoque
SET quantidade = quantidade + 3
WHERE livro_id = 3;

-- 3. Removendo unidades ao estoque de um livro 
UPDATE estoque
SET quantidade = quantidade - 12
WHERE livro_id = 1;

