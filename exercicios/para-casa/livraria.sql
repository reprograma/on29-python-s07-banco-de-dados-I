-- Criar uma tabela livros para armazenar os dados: id, titulo, autor, ano publicação, preço.

CREATE TABLE livros (
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
);

-- Inserindo os dados:

INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 38.75);

-- Verificando os dados:

SELECT * FROM livros

-- Criar uma tabela chamada estoque de livros com os dados: id livro, quantidade.

CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livro(id)
);

-- Inserir dados para testes:

INSERT INTO estoque (livro_id, quantidade) VALUES (1, 2);
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 5);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 1);

-- Verificando:

SELECT * FROM estoque

-- TESTES:  realizar consultas no SQL.
-- Consulta por ordem de id
-- Realizar JOIN entre as tabelas 'livros' e 'estoque' para melhor visualização das informações

SELECT 
    livros.titulo,
    livros.autor,
    estoque.livro_id,
    estoque.quantidade
FROM
    estoque
JOIN
    livros ON estoque.livro_id = livros.id;

-- Consultar por ordem de quantidade:

SELECT 
    livros.titulo,
    livros.autor,
    estoque.livro_id,
    estoque.quantidade
FROM
    estoque
JOIN
    livros ON estoque.livro_id = livros.id
ORDER BY
	quantidade DESC;

-- Obter a quantidade disponível em estoque para um determinado livro.

SELECT quantidade
FROM estoque
WHERE livro_id = 2

-- Adicionar unidades ao estoque de um livro específico.

UPDATE estoque SET quantidade = quantidade + 10 where id = 2

-- Verificando se o incremento de dados deu certo:

SELECT * FROM estoque

-- Remover unidades do estoque de um livro específico.

DELETE FROM estoque WHERE id = 2;

