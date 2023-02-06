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
