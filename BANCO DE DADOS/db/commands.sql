-- database: ./db.sqlite
CREATE TABLE
    cursos (id, nome, aulas);

DROP TABLE cursos;

CREATE TABLE
    cursos (
        id INTEGER NOT NULL,
        nome TEXT NOT NULL,
        aulas INTENGER
    );

PRAGMA TABLE_INFO ('cursos');

SELECT
    *
FROM
    cursos;

INSERT INTO
    "cursos" ("id", "nome", "aulas")
VALUES
    (1, 'HTML', 10);


INSERT INTO 
    "cursos" ("id", "nome", "aulas")
VALUES  
    (2, 'CSS', 12),
    (3, 'JavaScript', 15);
