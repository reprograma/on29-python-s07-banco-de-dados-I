--Criar Tabela estoque--

CREATE TABLE estoque (
	id INTEGER primary KEY,
    livro_id INTEGER,
    quantidade INTEGER
  );

--Alguns registros de estoque para teste--

INSERT INTO estoque (livro_id, quantidade) VALUES (1234, 10);
INSERT INTO estoque (livro_id, quantidade) VALUES (6534, 5);
INSERT INTO estoque (livro_id, quantidade) VALUES (7546, 8);
INSERT INTO estoque (livro_id, quantidade) VALUES (7654, 10);

--Obter a quantidade disponível em estoque para um determinado livro--

SELECT quantidade FROM estoque WHERE livro_id = 7546;

--Adicionar unidades ao estoque de um livro específico--

UPDATE estoque SET quantidade = 20 WHERE livro_id = 7546;

--Remover unidades do estoque de um livro específico--

UPDATE estoque SET quantidade = quantidade - 5 WHERE livro_id = 7546;