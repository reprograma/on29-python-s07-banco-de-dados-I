-- Gerenciamento de Estoque de Livros

-- Imagine que você está desenvolvendo um sistema de gerenciamento de estoque para uma livraria online. 
-- Você precisa criar uma tabela para armazenar informações sobre o estoque de livros disponíveis 
-- e depois escrever consultas SQL para realizar operações básicas de gerenciamento de estoque.

-- Problema:

-- Você precisa criar uma tabela chamada estoque para armazenar as seguintes informações sobre o estoque de livros:

-- id: Identificador único para cada registro de estoque (inteiro, chave primária).
-- livro_id: Identificador do livro (chave estrangeira referenciando a tabela livros).
-- quantidade: Quantidade disponível em estoque (inteiro).


-- Resolvendo o exercício proposto:

-- Criando a tabela livros para realizar a associação por chave estrangeira na tabela de estoque: 
CREATE TABLE livros (
  id INTEGER PRIMARY KEY,
  titulo TEXT,
  autor TEXT,
  ano_publicacao INTEGER,
  preco REAL
  );

-- Inserindo os dados na tabela livros: 
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Mulheres que correm com os lobos', 'Clarissa Pinkola Estés', 1989, 59.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Primeiro eu tive que morrer', 'Lorena Portela', 2020, 49.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Olhares negros: Raça e representação', 'Bell Hooks', 1992, 49.50);

-- Agora criando a tabela estoque:
CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id INTEGER,
  quantidade INTEGER,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  );

-- Inserindo alguns dados de estoque na tabela recém criada: 
INSERT INTO estoque (livro_id, quantidade) VALUES (1, 25); 
INSERT INTO estoque (livro_id, quantidade) VALUES (2, 10);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 15);


-- 1. Obter a quantidade disponível em estoque para um determinado livro:
SELECT
    livros.id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
FROM
	estoque
JOIN
	livros ON estoque.livro_id = livros.id
WHERE
    livros.id = 1; -- Aqui foi realizada a consulta do estoque do livro 'Mulheres que correm com os lobos'.


-- 2. Adicionar unidades ao estoque de um livro específico:
UPDATE estoque
SET quantidade = quantidade + 10
WHERE id = 3; -- Aqui foram adicionadas 10 unidades ao estoque do livro 'Olhares negros: Raça e representação'.

-- Relizando a consulta do estoque atualizado do livro que teve unidades adicionadas no passo anterior:
SELECT
    livros.id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
FROM
	estoque
JOIN
	livros ON estoque.livro_id = livros.id
WHERE
    livros.id = 3; -- Aqui foi realizada a consulta do estoque atualizado do livro 'Olhares negros: Raça e representação'.


-- 3. Remover unidades do estoque de um livro específico:
UPDATE estoque
SET quantidade = quantidade - 5
WHERE id = 2; -- Aqui foram removidas 5 unidades do estoque do livro 'Primeiro eu tive que morrer'.

-- Relizando a consulta do estoque atualizado do livro que teve unidades removidas no passo anterior:
SELECT
    livros.id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
FROM
	estoque
JOIN
	livros ON estoque.livro_id = livros.id
WHERE
    livros.id = 2; -- Aqui foi realizada a consulta do estoque atualizado do livro 'Primeiro eu tive que morrer'.


-- EXTRA: Consultando o estoque total de livros após as alterações: 
SELECT
    livros.id,
	livros.titulo,
    livros.autor,
    estoque.quantidade
FROM
	estoque
JOIN
	livros ON estoque.livro_id = livros.id


-- É isto profa, espero ter conseguido entender e resolver o exercício a contento. 
-- Obrigada por todo o conhecimento compartilhado até aqui! (:

