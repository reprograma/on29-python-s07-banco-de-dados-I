# Exercício de Sala 🏫  

### Exercício 1: Criar uma Tabela
Crie uma tabela chamada `alunos` com as seguintes colunas:
- `id` (inteiro, chave primária)
- `nome` (texto)
- `idade` (inteiro)

```sql

CREATE TABLE alunos (
    id INTEGER PRIMARY KEY,
    nome TEXT,
    idade INTEGER
);

```

### Exercício 2: Inserir Dados
Insira três registros na tabela `alunos` com os seguintes dados:
1. Nome: "João", Idade: 20
2. Nome: "Maria", Idade: 22
3. Nome: "Pedro", Idade: 19

```sql
INSERT INTO alunos (nome, idade) VALUES ('João', 20);
INSERT INTO alunos (nome, idade) VALUES ('Maria', 22);
INSERT INTO alunos (nome, idade) VALUES ('Pedro', 19);

```

### Exercício 3: Selecionar Dados
Selecione todos os registros da tabela `alunos` e exiba o resultado.

```sql
SELECT * FROM alunos;
```

### Exercício 4: Atualizar Dados
Atualize a idade do aluno com `id` igual a 2 para 23 anos.

```SQL
UPDATE alunos SET idade = 23 WHERE id = 2;
```

### Exercício 5: Excluir Dados
Exclua o aluno com `id` igual a 3 da tabela `alunos`.

```SQL
DELETE FROM alunos WHERE id = 3;
```

---

### Exercício 7: Problema da Loja de Livros

Suponha que você esteja gerenciando uma loja de livros online e precise criar um banco de dados para armazenar informações sobre os livros disponíveis. Você foi encarregado de projetar o esquema do banco de dados e realizar algumas consultas básicas.

**Problema:**

Você precisa criar uma tabela chamada `livros` para armazenar os seguintes dados sobre os livros:

- `id`: Identificador único para cada livro (inteiro, chave primária).
- `titulo`: Título do livro (texto).
- `autor`: Nome do autor do livro (texto).
- `ano_publicacao`: Ano de publicação do livro (inteiro).
- `preco`: Preço do livro (real).

Além disso, você deve inserir três registros de livros na tabela para fins de teste. Aqui estão os dados para inserção:

1. Título: "Dom Quixote", Autor: "Miguel de Cervantes", Ano de Publicação: 1605, Preço: R$ 29.90
2. Título: "Orgulho e Preconceito", Autor: "Jane Austen", Ano de Publicação: 1813, Preço: R$ 25.50
3. Título: "1984", Autor: "George Orwell", Ano de Publicação: 1949, Preço: R$ 35.75

Depois de criar a tabela e inserir os dados, escreva consultas SQL para as seguintes perguntas:

1. Selecione todos os livros da tabela.
2. Selecione o título e o autor de todos os livros publicados após o ano de 2010.
3. Selecione o título, autor e preço dos livros com preço superior a R$ 30,00.

Espero que este exercício continue a te ajudar a praticar SQL! Se precisar de mais alguma coisa, estou à disposição.

Antes de resolver o exercício pulverizar o banco, aqui está o código

```SQL
-- Criar a tabela 'livros'
CREATE TABLE livros (
    id INTEGER PRIMARY KEY,
    titulo TEXT,
    autor TEXT,
    ano_publicacao INTEGER,
    preco REAL
);

-- Inserir os registros de livros
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Dom Quixote', 'Miguel de Cervantes', 1605, 29.90);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('Orgulho e Preconceito', 'Jane Austen', 1813, 25.50);
INSERT INTO livros (titulo, autor, ano_publicacao, preco) VALUES ('1984', 'George Orwell', 1949, 35.75);

```
---

Terminou o exercício? Dá uma olhada nessa checklist e confere se tá tudo certinho, combinado?!

- [ ] Fiz o fork do repositório.
- [ ] Clonei o fork na minha máquina (`git clone url-do-meu-fork`).
- [ ] Resolvi o exercício.
- [ ] Adicionei as mudanças. (`git add .` para adicionar todos os arquivos, ou `git add nome_do_arquivo` para adicionar um arquivo específico)
- [ ] Commitei a cada mudança significativa ou na finalização do exercício (`git commit -m "Mensagem do commit"`)
- [ ] Pushei os commits na minha branch (`git push origin nome-da-branch`)
