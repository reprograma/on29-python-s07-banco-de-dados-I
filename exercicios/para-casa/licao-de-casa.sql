-- Criando a tabela estoque

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    livro_id INTEGER,
    quantidade INTEGER
);

-- Criando a tabela livros

CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Adicionando os dados da tabela estoque 

INSERT INTO estoque (id, livro_id, quantidade) VALUES (1, 1, 10);
INSERT INTO estoque (id, livro_id, quantidade) VALUES (2, 2, 6);
INSERT INTO estoque (id, livro_id, quantidade) VALUES (3, 3, 6);

-- Adicionando os dados da tabela livros

INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

-- Obter a quantidade disponível de em estoque para um determinado livro

SELECT estoque.livro_id, livros.titulo, estoque.quantidade
FROM estoque
JOIN livros ON estoque.livro_id = livros.id
WHERE estoque.livro_id = 3;

-- Adicionar unidades ao estoque de um livro específico

UPDATE estoque SET quantidade = quantidade + 17
WHERE id = 2;

-- Remover unidades do estoque de um livro específico

UPDATE estoque SET quantidade = quantidade - 15
WHERE id = 2;

-- Consultar atualização de estoque

SELECT livros.id, livros.titulo, livros.autor, estoque.quantidade
FROM estoque
JOIN livros ON estoque.livro_id = livros.id;