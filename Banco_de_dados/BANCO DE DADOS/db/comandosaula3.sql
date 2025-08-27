-- database: ./db_aula3.sqlite

-- Tabela Alunos
CREATE TABLE "Alunos"(
    "ID_Aluno" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Matricula" TEXT NOT NULL,
    "CPF" TEXT NOT NULL,
    "Serie" TEXT NOT NULL,
    "ID_Disciplinas" INTEGER NOT NULL,
    FOREIGN KEY ("ID_Disciplinas") REFERENCES "Disciplinas"
);

DROP TABLE "Alunos";

--Tabela Professores
CREATE TABLE "Professores" (
    "ID_Professor" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "ID_Disciplina" INT NOT NULL,
    "Matricula" TEXT NOT NULL,
    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplinas"
);

-- Tabela Disciplinas
CREATE TABLE "Disciplinas"(
    "ID_Disciplina" INTENGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Data" TEXT NOT NULL,
    "Serie" TEXT NOT NULL
);

DROP TABLE "Disciplinas";

-- Tabela Matricula
CREATE TABLE "Matricula"(
    "ID_Matricula" INTEGER NOT NULL PRIMARY KEY,
    "ID_Aluno" INTEGER NOT NULL,
    "ID_Disciplina" INTEGER NOT NULL,
    FOREIGN KEY ("ID_Aluno") REFERENCES "Alunos",
    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplinas"
);


INSERT INTO 
"Alunos"("ID_Aluno",
    "Nome",
    "Matricula",
    "CPF",
    "Serie",
    "ID_Disciplinas")
VALUES
(1,'João', '2024b010','115568','3a', 2),
(2, 'Maria','2024b510', '154681', '2a', 1),
(3, 'Marcos', '2024b610', '152354', '1a', 3);

INSERT INTO "Disciplinas" (
    "ID_Disciplina",
    "Nome",
    "Data",
    "Serie"
)
VALUES
(1, 'MAT', '20-05-2025','2A'),
(2, 'GEO', '20-05-2025','3A'),
(3, 'POR', '20-05-2025','1A');

INSERT INTO "Professores"(
    "ID_Professor",
    "Nome",
    "ID_Disciplina",
    "Matricula"
)
VALUES
(1, 'Artur', 1, '2025a1'),
(2, 'Marcia', 2, '2025a2'),
(3, 'Marcos', 3, '2025a3');

INSERT INTO 'Matricula'(
    "ID_Matricula",
    "ID_Aluno",
    "ID_Disciplinas"
)

VALUES
(1,1,1),
(2,2,1),
(3,2,1);