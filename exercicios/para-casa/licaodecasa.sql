----- https://sqliteonline.com/   usar o site pra testa o codigo
----- colocar comentarios em cada bloco de codigos

---- 1. Tabela por nome Estoque criada com espaço para informações sobre identificação unica do livro com 
---- chave estrangeira e quantidade:

CREATE TABLE estoque (
  id INTEGER PRIMARY KEY,
  livro_id VARCHAR(200), ---- Acabei retirando essa virgula e acabou por não criar a aba de quantidade. Corrigi.
  quantidade INTEGER
);

---- 2. inserindo as informações de nomes de livros e suas quantindades:

INSERT INTO estoque (livro_id, quantidade) VALUES ('Mitologia dos Orixas - Reginaldo Prandi', 4);
INSERT INTO estoque (livro_id, quantidade) VALUES ('Escritos de uma vida - Sueli Carneiro', 2);
INSERT INTO estoque (livro_id, quantidade) VALUES ('Olhos Dagua - Conceição Evaristo', 4);
INSERT INTO estoque (livro_id, quantidade) VALUES ('Mulheres, Raça e Classe - Angela Davis', 4);

---- 3. Fui conferir se tinha criado direitinho:

SELECT * FROM estoque;

---- Obter a quantidade disponível em estoque para um determinado livro.

SELECT quantidade FROM estoque Where id=1

---- Adicionar unidades ao estoque de um livro específico. Faremos um update

UPDATE estoque SET quantidade = quantidade +1 WHERE id=1
SELECT * FROM estoque WHERE id=1 ---- Conferido e retornou a quantidade incrementada.


---- Remover unidades do estoque de um livro específico.
DELETE FROM estoque WHERE id=1
SELECT * FROM estoque WHERE id=1 ---- Conferindo a retirada do livro e de fato não retornou nada.


