<h1 align="center">
  <img src="assets/reprograma-fundos-claros.png" alt="logo reprograma" width="500">
</h1>

# Tema da Aula

Turma Online on29 | Python | Semana 07 | 2024 | Professora Daviny Letícia

### Instruções
Antes de começar, vamos organizar nosso setup.
* Fork esse repositório 
* Clone o fork na sua máquina (Para isso basta abrir o seu terminal e digitar `git clone url-do-seu-repositorio-forkado`)
* Entre na pasta do seu repositório (Para isso basta abrir o seu terminal e digitar `cd nome-do-seu-repositorio-forkado`)
* [Add outras intrucoes caso necessario]

### Resumo
O que veremos na aula de hoje?
* [Banco de dados](#tema1)
* [Comandos SQL](#tema3)


### Banco de dados 

#### O que é um banco de dados

É um conjunto de informações que são organizadas em uma estrutura específica para permitir seu armazenamento e recuperação de maneira eficiente. Ele pode ser utilizado em diversos tipos de sistemas, desde aplicações simples até sistemas complexos de grande porte.
Os primeiros fundamentos de banco de dados relacionais surgiram entre as décadas de 1960 a 1970 pela IBM. Na década de 80, a Oracle, com a permissão da IBM, foi a primeira empresa a desenvolver o banco utilizando o padrão SQL para consulta/escrita como é  conhecido hoje. 
Após a explosão da web, também conhecida como web 2.0, foi necessário uma alternativa  ao SQL(relacional), assim, a partir de 1998, foi criado o conceito de banco nosql( não relacional ).

## Tipo de dados

No SQLite, assim como em muitos outros sistemas de gerenciamento de banco de dados (SGBDs), os tipos de dados disponíveis são essenciais para definir a estrutura das tabelas e como os dados são armazenados. Aqui estão os tipos de dados mais comuns disponíveis no SQLite Online:

1. **INTEGER**: Armazena números inteiros. Pode ser especificado com um tamanho, como INTEGER(4) ou INTEGER(8), indicando o número de bytes.

2. **REAL**: Armazena valores de ponto flutuante, como números decimais. 

3. **TEXT**: Armazena strings de texto, como nomes, descrições, etc. O tamanho máximo é 1 bilhão de bytes.

4. **BLOB**: Armazena dados binários, como imagens, arquivos, etc. 

5. **NUMERIC**: Pode armazenar números inteiros ou de ponto flutuante. O SQLite usa o tipo de dados NUMERIC para armazenar qualquer valor que possa ser representado como inteiro ou número de ponto flutuante.

Esses são os tipos de dados básicos do SQLite. Cada tipo de dados tem suas próprias características e é escolhido de acordo com o tipo de dados que será armazenado na tabela. Além desses, o SQLite também suporta outros tipos de dados, como DATE, TIME, TIMESTAMP, BOOLEAN, etc. Mas em uma implementação básica como o SQLite Online, esses cinco tipos costumam ser os mais utilizados.

---

## Comandos SQL por Categoria


![comando SQL](assets/tipos_ling.png)

### DDL (Data Definition Language)

DDL (Data Definition Language)
DDL é a linguagem usada para definir a estrutura do banco de dados. Ela inclui comandos para criar, modificar e excluir objetos de banco de dados, como tabelas, índices e visões.

#### 1. CREATE
Cria um novo objeto no banco de dados, como uma tabela.

Exemplo:
```sql
CREATE TABLE nome_da_tabela (
    coluna1 tipo_de_dado,
    coluna2 tipo_de_dado,
    ...
);
```

#### 2. ALTER
Modifica uma estrutura de objeto existente no banco de dados.

Exemplo:
```sql
ALTER TABLE nome_da_tabela ADD coluna3 tipo_de_dado;
```

#### 3. DROP
Remove um objeto do banco de dados.

Exemplo:
```sql
DROP TABLE nome_da_tabela;
```

### DQL (Data Query Language)

DQL é a linguagem usada para recuperar dados de um banco de dados. Ele inclui principalmente o comando SELECT, que é usado para consultar os dados de uma ou mais tabelas.

#### 1. SELECT
Recupera dados de uma ou mais tabelas.

Exemplo:
```sql
SELECT coluna1, coluna2
FROM nome_da_tabela;
```

### DML (Data Manipulation Language)

DML é a linguagem usada para manipular os dados armazenados no banco de dados. Ele inclui comandos para adicionar, atualizar e excluir dados de uma tabela.

#### 1. INSERT
Adiciona novos registros a uma tabela.

Exemplo:
```sql
INSERT INTO nome_da_tabela (coluna1, coluna2)
VALUES (valor1, valor2);
```

#### 2. UPDATE
Modifica registros existentes em uma tabela.

Exemplo:
```sql
UPDATE nome_da_tabela
SET coluna1 = novo_valor1
WHERE condição;
```

#### 3. DELETE
Remove registros de uma tabela.

Exemplo:
```sql
DELETE FROM nome_da_tabela
WHERE condição;
```

### DCL (Data Control Language)

DCL é a linguagem usada para gerenciar direitos e permissões em um banco de dados. Ele inclui comandos para conceder e revogar permissões de acesso a usuários e papéis.

#### 1. GRANT
Concede permissões de acesso a usuários ou papéis.

Exemplo:
```sql
GRANT SELECT ON nome_da_tabela TO usuario;
```

#### 2. REVOKE
Revoga as permissões concedidas anteriormente.

Exemplo:
```sql
REVOKE SELECT ON nome_da_tabela FROM usuario;
```

### TCL (Transaction Control Language)

TCL é a linguagem usada para gerenciar transações em um banco de dados. Ele inclui comandos para iniciar, confirmar ou desfazer transações.

#### 1. COMMIT
Confirma as alterações feitas em uma transação.

Exemplo:
```sql
COMMIT;
```

#### 2. ROLLBACK
Desfaz as alterações feitas em uma transação.

Exemplo:
```sql
ROLLBACK;
```

#### 3. SAVEPOINT
Define um ponto em uma transação para onde você pode voltar posteriormente.

Exemplo:
```sql
SAVEPOINT nome_do_ponto;
```

#### 4. RELEASE SAVEPOINT
Remove um savepoint existente.

Exemplo:
```sql
RELEASE SAVEPOINT nome_do_ponto;
```

