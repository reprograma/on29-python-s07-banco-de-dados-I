-- Criando a tabela alunos e inserindo os dados
CREATE TABLE alunos (
  id integer PRIMARY key,
  nome text,
  idade integer
);

INSERT into alunos (nome, idade) VALUES ('Pedro', 25);
INSERT INTO alunos (nome, idade) VALUES ('Maria', 32);
INSERT INTO alunos (nome, idade) VALUES ('João', 40);

-- Selecionando os dados

SELECT * FROM alunos

-- ATUALIZANDO OS DADOS

update alunos set idade = 25 WHERE id = 1;

-- EXCLUINDO DADOS

delete from alunos where id = 3;

-- PROBLEMA DA LOJA DE LIVROS
-- 1. Criando a tabela livros e inserindo os dados
create TABLE livros (
  id integer PRIMARY KEY,
  titulo text,
  autor text,
  ano_publicacao date,
  preco real
);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom quixote', 'Miguel de Cervantes', 1605, 29.9);
INSERT into livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e preconceito', 'Jane Austen', 1813, 25.5);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

-- 2. Selecionando o título e o autor de todos os livros publicados após o ano de 1700
SELECT titulo, autor FROM livros WHERE ano_publicacao > 1700;

-- 3. Selecionando o título, autor e preço dos livros com preço superior a R$ 30,00
SELECT titulo, autor, preco FROM livros WHERE preco > 30;

-- GERENCIAMENTO DE VENDAS DE LIVROS
-- 1. Criando a tabela vendas
create TABLE vendas (
  id integer PRIMARY KEY,
  livro_id integer,
  data_venda text,
  quantidade integer,
  FOREIGN KEY (livro_id) REFERENCES livros (id)
  );

-- 2. Inserindo dados
INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (1, '2024-05-10', 3);  
INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (2, '2024-05-09', 5);  
INSERT INTO vendas (livro_id, data_venda, quantidade) VALUES (3, '2024-05-08', 2);  

-- 3. Realizando um JOIN entre as tabelas livros e vendas para obter as informações solicitadas.
SELECT
	livros.titulo,
    livros.autor,
    vendas.data_venda,
    vendas.quantidade
FROM
	vendas
JOIN
	livros ON vendas.livro_id = livro_id;

-- SISTEMA DE VOTAÇÃO ONLINE PARA MELHORES LIVROS DO ANO
-- 1. Criando a tabela
CREATE TABLE votos (
  id INTEGER PRIMARY KEY,
  id_usuario INTEGER,
  id_livro INTEGER,
  data_voto DATETIME
);

-- 2. Inserir registros
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 1, '2024-05-10 08:30:00');  
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (2, 2, '2024-05-10 09:45:00');  
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (1, 3, '2024-05-10 10:15:00');  
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (3, 1, '2024-05-10 11:00:00');  
INSERT INTO votos (id_usuario, id_livro, data_voto) VALUES (2, 1, '2024-05-10 12:00:00');  

-- 3. Contando o número total de votos recebido por cada livro

SELECT id_livro, COUNT (*) AS total_votos
FROM votos
GROUP BY id_livro

-- 4. Identificando os livros mais votados
SELECT id_livro, COUNT(*) AS total_votos
FROM votos
GROUP BY id_livro
ORDER BY total_votos DESC;

-- 5. Verificando se determinado usuário já votou em um determinado livro
SELECT COUNT(*) > 0 AS ja_votou
FROM votos
WHERE id_usuario = 1
  AND id_livro = 1;

-- 6. Obterndo lista de livros votados por um usuário específico
SELECT id_livro, data_voto
FROM votos
WHERE id_usuario = 2;








