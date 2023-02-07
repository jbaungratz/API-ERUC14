CREATE DATABASE dbExoAPI;

USE dbExoAPI;

CREATE TABLE Projetos
(
	id INT PRIMARY KEY IDENTITY,
	Titulo VARCHAR(150) NOT NULL,
	Status VARCHAR(150) NOT NULL,
	Data_de_Inicio VARCHAR(10) NOT NULL,
	Area VARCHAR(150) NOT NULL
);

INSERT INTO Projetos (Titulo, Status, Data_de_Inicio, Area)
VALUES ('Projeto Álamo', 'Em Planejamento', '10/12/2022', 'T.I.');

INSERT INTO Projetos (Titulo, Status, Data_de_Inicio, Area)
VALUES ('Projeto Container', 'Iniciado', '10/01/2023', 'RH');

INSERT INTO Projetos (Titulo, Status, Data_de_Inicio, Area)
VALUES ('Projeto ExoAPI', 'Iniciado', '05/02/2023', 'T.I.');

