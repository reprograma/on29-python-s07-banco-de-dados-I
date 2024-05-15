-- Criar a tabela estoque
CREATE TABLE estoque (
    id SERIAL PRIMARY KEY,
    livro_id INTEGER REFERENCES livros(id),
    quantidade INTEGER
);

-- Inserindo alguns registros de estoque para teste
INSERT INTO estoque (livro_id, quantidade) VALUES
(1, 11), -- ID 1 tem 11 unidades 
(2, 16), -- ID 2 tem 16 unidades 
(3, 210); -- ID 3 tem 210 unidades

-- Obtendo a quantidade disponível em estoque para um determinado livro
SELECT quantidade FROM estoque WHERE livro_id = 2; -- exemplo 

-- Adicionando unidades ao estoque de um livro específico
UPDATE estoque SET quantidade = quantidade + 10 WHERE livro_id = 2;

-- Removendo unidades do estoque de um livro específico
UPDATE estoque SET quantidade = quantidade - 5 WHERE livro_id = 2;
