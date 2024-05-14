-- criar tabela estoque

CREATE TABLE estoque (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    quantidade INTEGER
);

-- Inserir os registros de livros
INSERT INTO estoque (titulo, autor, quantidade) VALUES ('Dom Quixote', 'Miguel de Cervantes', 20);
INSERT INTO estoque (titulo, autor, quantidade) VALUES ('Orgulho e Preconceito', 'Jane Austen', 37);
INSERT INTO estoque (titulo, autor, quantidade) VALUES ('1984', 'George Orwell', 18);
INSERT INTO estoque (titulo, autor, quantidade) VALUES ('O Menino Maluquinho', 'Ziraldo', 43);

-- 1. Obter a quantidade disponível em estoque para um determinado livro.
SELECT *, quantidade
FROM estoque
WHERE id = 4

--  2. Adicionar unidades ao estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade + 2
WHERE id = 3

-- 3. Remover unidades do estoque de um livro específico.
UPDATE estoque
SET quantidade = quantidade - 3
WHERE id = 4