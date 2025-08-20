-- database: ./db.sqlite

-- Crie as tabelas: produtos, clientes e compras.
-- Nenhuma coluna da tabela pode ser nula.
-- Defina o tipo de dado de cada coluna (INTEGER ou TEXT).
-- A tabela produtos deve ter as colunas id, nome, preco
CREATE TABLE "produtos"(
    id INTENGER NOT NULL,
    nome TEXT NOT NULL,
    preco REAL NOT NULL
);
-- A tabela clientes deve ter as colunas id, nome, email
CREATE TABLE "clientes"(
    id INTENGER NOT NULL,
    nome TEXT NOT NULL,
    email TEXT NOT NULL
);

-- A tabela compras deve ter as colunas id, cliente_id, produto_id, data
CREATE TABLE "compras"(
    id INTENGER NOT NULL,
    cliente_id INTENGER NOT NULL,
    produto_id INTENGER NOT NULL,
    data TEXT NOT NULL
);


-- Insira os seguintes dados na tabela produtos:
-- 1, Notebook, 1000
-- 2, Smartphone, 500
-- 3, Tablet, 300
INSERT INTO 
    "produtos"("id", "nome", "preco")
VALUES
    (1, 'Notebook', 1000),
    (2, 'Smartphone', 500),
    (3, 'Tablet', 300);



-- Insira os seguintes dados na tabela clientes:
-- 1, Maria, maria@email.com
-- 2, João, joao@email.com
INSERT INTO 
    "clientes"("id", "nome", "email")
VALUES
    (1, 'Maria', 'maria@email.com'),
    (2, 'João','joao@email.com');



-- Insira os seguintes dados na tabela compras:
-- João comprou o Notebook no dia 2049-01-01
-- Maria comprou o Smartphone no dia 2049-01-02
-- João comprou o Tablet no dia 2049-01-03

INSERT INTO
    "compras"("id", "cliente_id", "produto_id", "data")
VALUES
    (1, 2, 1, 2049-01-01),
    (2, 1, 2, 2049-01-02),
    (3, 2, 3, 2049-01-03);



-- Selecione todos os dados da tabela produtos.
SELECT * FROM "produtos";

-- Selecione apenas o nome de todos os produtos que custam mais que 400.
SELECT * FROM 
    "produtos"
WHERE
    "preco" > 400;
