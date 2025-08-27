-- database: ./db.sqlite
CREATE TABLE "Professores" (
    "ID_Professor" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "ID_Disciplina" INTEGER NOT NULL,
    "Matricula" TEXT NOT NULL,

    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplina"
);

CREATE TABLE "Disciplinas"(
    "ID_Disciplina" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Dia" TEXT NOT NULL
);

CREATE TABLE "Alunos"(
    "ID_Aluno" INTEGER NOT NULL PRIMARY KEY,
    "Nome" TEXT NOT NULL,
    "Matricula" TEXT NOT NULL,
    "ID_Disciplina" INTEGER NOT NULL,
    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplinas" 
);

CREATE TABLE "AlunosDisciplinas" (
    "AlunoID" INTEGER NOT NULL,
    "DisciplinaID" INTEGER NOT NULL,
    FOREIGN KEY ("AlunoID") REFERENCES "Alunos"("ID_Aluno"),
    FOREIGN KEY ("DisciplinaID") REFERENCES "Disciplinas"("ID_Disciplina")
);
