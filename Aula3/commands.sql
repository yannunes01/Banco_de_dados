-- database: ./db.sqlite
CREATE TABLE "Professores" (
    "ID_Professor" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "ID_Disciplina" INTEGER NOT NULL,
    "Matricula" TEXT NOT NULL,

    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplinas"
);
DROP TABLE "Professores";

CREATE TABLE "Disciplinas"(
    "ID_Disciplina" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Dia" TEXT NOT NULL
);

CREATE TABLE "Alunos"(
    "ID_Aluno" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Matricula" TEXT NOT NULL 
);

DROP TABLE "Alunos";

CREATE TABLE "AlunosDisciplinas" (
    "AlunoID" INTEGER NOT NULL,
    "DisciplinaID" INTEGER NOT NULL,
    FOREIGN KEY ("AlunoID") REFERENCES "Alunos"("ID_Aluno"),
    FOREIGN KEY ("DisciplinaID") REFERENCES "Disciplinas"("ID_Disciplina")
);


INSERT INTO "Disciplinas"
("ID_Disciplina", "Nome", "Dia")
VALUES
(1, 'Matemática', 'Segunda'),
(2, 'História', 'Terça'),
(3, 'Geografia', 'Quarta');


INSERT INTO "Professores"
("ID_Professor", "Nome", "ID_Disciplina", "Matricula")
VALUES
(1, 'Marcos', 2, '2025b'),
(2, 'Jose', 1, '2025a'),
(3, 'Claudia', 3, '2025c');

INSERT INTO "Alunos"
("ID_Aluno", "Nome", "Matricula")
VALUES
(1, 'Caio', '2025t1'),
(2, 'Mario', '2025t2'),
(3, 'Carla', '2025t3');

