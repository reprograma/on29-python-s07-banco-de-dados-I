-- Criando tabela livros
CREATE TABLE livros(
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
);

-- Inserindo registro de livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

-- Criando tabela estoque
CREATE TABLE estoque(
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserindo registros de estoque
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 20);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 15);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 5);

-- Consulta de estoque 
SELECT quantidade FROM estoque WHERE livro_id = 1

-- Adicionar unidades de estoque 
UPDATE estoque SET quantidade = 23 WHERE id = 1;

-- Remover unidades de estoque 
DELETE FROM estoque WHERE id = 1;