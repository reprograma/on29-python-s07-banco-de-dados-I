-- criar uma tabela chamada `estoque`

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    id_livro INTEGER,
    quantidade DATETIME
);

-- Inserir os registros de estoque
INSERT INTO estoque (id_livro, quantidade) VALUES (1, 20);
INSERT INTO estoque (id_livro, quantidade) VALUES (2, 30);
INSERT INTO estoque (id_livro, quantidade) VALUES (3, 10);

-- Criar a tabela 'livros'
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Inserir os registros de livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

-- 1. Obter a quantidade disponível em estoque para um determinado livro.
SELECT quantidade from estoque WHERE id_livro = 2;

-- 2. Adicionar unidades ao estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade + 10 WHERE id_livro = 3;

-- 3. Remover unidades do estoque de um livro específico.
UPDATE estoque SET quantidade = quantidade - 10 WHERE id_livro = 1;