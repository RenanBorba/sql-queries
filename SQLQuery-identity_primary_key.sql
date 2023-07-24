CREATE TABLE Tbl_Clientes (
	Codigo INT IDENTITY (1,1) PRIMARY KEY,
	Nome VARCHAR (100),
	UF VARCHAR (2)
);

INSERT INTO Tbl_Clientes (Nome, UF)
VALUES ('renan', 'SP')

SELECT * FROM Tbl_Clientes

INSERT INTO Tbl_Clientes (Nome, UF)
VALUES ('joão', 'RJ')