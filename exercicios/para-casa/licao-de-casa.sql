CREATE TABLE estoque (
      id INTEGER PRIMARY KEY,
      livro_id INTEGER,
      quantidade INTEGER,
      FOREIGN KEY (livro_id) REFERENCES livros(id)
);

INSERT INTO estoque (livro_id, quantidade) VALUES ('Harry Potter', 7);
INSERT INTO estoque (livro_id, quantidade) VALUES ('Rita Lee mora ao lado', 3);
INSERT INTO estoque (livro_id, quantidade) VALUES ('Eu sou Malala', 5);

UPDATE estoque SET quantidade = 6 WHERE id = 1

DELETE FROM estoque WHERE id = 3