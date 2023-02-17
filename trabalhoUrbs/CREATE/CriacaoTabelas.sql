CREATE DATABASE sistema_Onibus

USE  sistema_Onibus

CREATE TABLE Passageiro(
	id INT IDENTITY(1,1)  NOT NULL,
    nome varchar(30) NOT NULL,
	bairro varchar(30) NOT NULL,
	Rua varchar(30) NOT NULL,
	Cidade varchar(30) NOT NULL,
	UF varchar(10) NOT NULL,
	numero int NOT NULL
	CONSTRAINT PK_ID_Pass PRIMARY KEY(id)
)
CREATE TABLE Onibus(
	id INT IDENTITY(1,1) NOT NULL,
	linha INT NOT NULL,
	quilometragem int NOT NULL,
	Motorista varchar(30),
	CONSTRAINT PK_ID_BUS PRIMARY KEY(id)
)

CREATE TABLE Cart�o(
	ID_Cart�o INT IDENTITY(1,1) NOT NULL,
	ID_Pass INT NOT NULL,
	Creditos INT NOT NULL,
	CONSTRAINT PK_ID_Cart�o PRIMARY KEY(ID_Cart�o),
	CONSTRAINT FK_ID_Pass FOREIGN KEY(ID_Pass) REFERENCES Passageiro(id),
)
CREATE TABLE Viagens(
	ID_Cart�o INT NOT NULL,
	ID_BUS INT NOT NULL,
	CONSTRAINT FK_ID_BUS FOREIGN KEY(ID_Bus) REFERENCES Onibus(id),
	CONSTRAINT FK_ID_Cart�o FOREIGN KEY(ID_Cart�o) REFERENCES Cart�o(ID_Cart�o)
	)