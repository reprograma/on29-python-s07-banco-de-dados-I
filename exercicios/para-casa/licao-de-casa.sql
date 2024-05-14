-- CRIANDO A TABELA --
CREATE TABLE estoque(
  'id' INTEGER PRIMARY KEY,
  'livro_id' INTEGER,
  'quantidade' INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  )


-- INSERIR ESTOQUE --
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 52);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 30);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 21);
INSERT INTO estoque (livro_id, quantidade) VALUES (4, 38);


-- 1A) QUANTIDADE DE CADA LIVRO DISPONÍVEL NO ESTOQUE --
SELECT 
livros.titulo,
livros.autor,
estoque.livro_id,
estoque.quantidade
FROM
estoque
JOIN
livros ON estoque.livro_id = livros.id

-- 1B) QUANTIDADE DE UM LIVRO ESPECÍFICO EM ESTOQUE (FUNCIONOU) --
SELECT livros.titulo, quantidade
FROM estoque
JOIN livros ON estoque.livro_id = livros.id
WHERE livro_id = 1

-- 1B) QUANTIDADE DE UM LIVRO ESPECÍFICO EM ESTOQUE (NÃO FUNCIONOU, APARECEU UMA COLUNA 'total_titulo1 e, embaixo, o nº1) --
SELECT livros.titulo, quantidade, COUNT(quantidade) as total_titulo1
FROM estoque
JOIN livros ON estoque.livro_id = livros.id
WHERE livro_id = 1


-- 2) ADICIONAR QUANTIDADE AO ESTOQUE DE UM LIVRO ESPECÍFICO (A QUANTIDADE INICIAL ERA 52 UNIDADES) -- 
UPDATE estoque SET quantidade = quantidade + 6 WHERE id = 1;
SELECT livro_id, quantidade FROM estoque;


-- 3) REMOVER UNIDADES DO ESTOQUE DE UM LIVRO ESPECÍFICO (A QUANTIDADE INICIAL ERA DE 30) --
UPDATE estoque SET quantidade = quantidade -5 WHERE id = 2;
SELECT livro_id, quantidade FROM estoque