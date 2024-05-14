***ORGANIZAR A TABELA EM ORDEM DECRESCENTE, DO LIVRO MAIS VOTADO PARA O MENOS VOTADO, APRESENTANDO O NOME DO LIVRO

SELECT
	livros.título,
	livros.autor,
	votos.data_voto,
	votos.id_usuario, COUNT(*) AS total_votos
FROM
	votos
JOIN
	livros ON votos.id_livro = livros.id
 GROUP BY id_livro

***SABER SE O USUÁRIO X VOTOU NO LIVRO Y:

SELECT COUNT (*) AS votou
FROM votos
WHERE id_usuario = 1 AND id_livro = 2

*** QUAL É O VOTO DO USUÁRIO TAL:
SELECT id_livro
FROM votos
WHERE id_usuario = 4

