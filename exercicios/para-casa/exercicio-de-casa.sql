-- Criando a tabela 'livros'
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Criando a tabela 'estoque'
CREATE TABLE estoque(
	id INTEGER PRIMARY key,
  	livro_id INTEGER,
    quantidade INTEGER,
    FOREIGN KEY (livro_id) REFERENCES livros(id)
);

-- Inserindo os registros na tabela livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Crime e Castigo', 'Fiódor Dostoiévski', 1866, 28.99);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Cem Anos de Solidão', 'Gabriel García Márquez', 1967, 32.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('O Senhor dos Anéis', 'J.R.R. Tolkien', 1954, 40.00);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('A Revolução dos Bichos', 'George Orwell', 1945, 27.80);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('O Pequeno Príncipe', 'Antoine de Saint-Exupéry', 1943, 20.90);

-- Inserindo os registros na tabela estoque
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'Dom Quixote'), 10);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'Orgulho e Preconceito'), 15);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = '1984'), 20);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'Crime e Castigo'), 8);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'Cem Anos de Solidão'), 12);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'O Senhor dos Anéis'), 18);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'A Revolução dos Bichos'), 7);
INSERT INTO estoque (livro_id, quantidade) VALUES ((SELECT id FROM livros WHERE titulo = 'O Pequeno Príncipe'), 25);

-- Obter a quantidade disponível em estoque para os registros de livros.
SELECT 
    livros.id,
    livros.titulo, 
    livros.autor, 
    estoque.quantidade
FROM 
    estoque
JOIN 
    livros ON estoque.livro_id = livros.id;

-- Obter a quantidade disponível em estoque para um determinado livro.
SELECT 
    livros.titulo, 
    livros.autor, 
    estoque.quantidade
FROM 
    estoque
JOIN 
    livros ON estoque.livro_id = livros.id
WHERE livros.id = 8;

-- Adicionar unidades ao estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade + 5
WHERE livro_id = 7;

-- Consulta para verificar o estoque dos livros após a adição de unidades ao livro de id = 7
SELECT 
    livros.id,
    livros.titulo, 
    livros.autor, 
    estoque.quantidade
FROM 
    estoque
JOIN 
    livros ON estoque.livro_id = livros.id;

-- Remover unidades do estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade - 3
WHERE livro_id = 5;

-- Consulta para verificar o estoque dos livros após a remoção de unidades ao livro de id = 5
SELECT 
    livros.id,
    livros.titulo, 
    livros.autor, 
    estoque.quantidade
FROM 
    estoque
JOIN 
    livros ON estoque.livro_id = livros.id;