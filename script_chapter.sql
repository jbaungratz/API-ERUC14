CREATE DATABASE Chapter;

USE Chapter;

CREATE TABLE Livros
(
	Id INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(150) NOT NULL,
	QuantidadePaginas INT,
	Disponivel BIT

);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo Absoluto', 120, 1);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo Consulta', 220, 0);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo Multi', 320, 1);

INSERT INTO Livros (Titulo, QuantidadePaginas, Disponivel)
VALUES ('Titulo Praticas', 420, 0);

SELECT * FROM Livros;


CREATE TABLE Usuarios (
    Id INT PRIMARY KEY IDENTITY,
    Email VARCHAR(255) NOT NULL UNIQUE,
    Senha VARCHAR(120) NOT NULL,
	Tipo CHAR(1) NOT NULL
)
GO

INSERT INTO Usuarios VALUES ('aluno@email.br', '1234', 0);

INSERT INTO Usuarios VALUES ('jose@email.br', '1010', 1);

GO

SELECT * FROM Usuarios;