-- database: ./db.sqlite
CREATE TABLE "Professores" (
    "ID_Professor" INTEGER NOT NULL,
    "Nome" TEXT NOT NULL,
    "ID_Disciplina" INTEGER NOT NULL,
    "Matricula" TEXT NOT NULL,

    FOREIGN KEY ("ID_Disciplina") REFERENCES "Disciplina"
);
