-- Criar tabela 'livros' --
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Inserir valores na tabela 'livros' --
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);
INSERT into livros (titulo, autor, ano_publicacao, preco) values ('Morro dos Ventos Uivantes', 'Emily Brontë', 1847, 45.32);
insert into livros (titulo, autor, ano_publicacao, preco) VALUES ('As Cronicas do Rei Arthur - O Rei do Inverno', 'Bernard Cornwell', 2005, 52.65);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Liber Null e o Psiconauta', 'Peter J. Carroll', 2016, 22.50);

-- verificar se tabela 'livros' foi criada --
SELECT * FROM livros

-- criar tabela 'estoque -- 

CREATE TABLE estoque (
  id integer PRIMARY KEY,
  livro_id integer,
  quantidade integer,
  FOREIGN KEY (livro_id) REFERENCES livros(id)
  );

 -- colocar valores dentro da tabela 'estoque' --
 
insert into estoque (livro_id, quantidade) VALUES (1, 6);
INSERT INTO estoque (livro_id, quantidade) values (2, 8);
INSERT INTO estoque (livro_id, quantidade) VALUES (3, 5);
INSERT INTO estoque (livro_id, quantidade) VALUEs (4,13);
INSERT INTO estoque (livro_id, quantidade) VALUES (5, 1);
INSERT into estoque (livro_id, quantidade) VALUES (6, 7);  

-- verificar se tabela foi criada com sucesso --

SELECT * FROM estoque;

--  Obter a quantidade disponível em estoque para um determinado livro --

SELECT
	livros.titulo,
   estoque.livro_id,
   estoque.quantidade
FROM
	estoque
JOIN
	livros on estoque.livro_id = livros.id
WHERE livro_id = 6;

-- Adicionar unidades ao estoque de um livro específico. --

UPDATE estoque
set quantidade = quantidade + 2
where livro_id = 5;

-- verificar se o update foi feito com sucesso -- 

SELECT
	livros.titulo,
   estoque.livro_id,
   estoque.quantidade
FROM
	estoque
JOIN
	livros on estoque.livro_id = livros.id
WHERE livro_id = 5;

-- Remover unidades do estoque de um livro específico.--

update estoque
set quantidade = quantidade - 1
WHERE livro_id = 4;

-- verificar se o update foi feito com sucesso -- 

SELECT
	livros.titulo,
   estoque.livro_id,
   estoque.quantidade
FROM
	estoque
JOIN
	livros on estoque.livro_id = livros.id
WHERE livro_id = 4;


