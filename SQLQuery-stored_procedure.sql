CREATE TABLE dbo.People (
	PeopleId INT IDENTITY (1,1) PRIMARY KEY,
	FirstName NVARCHAR(50) NOT NULL,
	LastName NVARCHAR(50) NOT NULL
);


INSERT INTO dbo.People (FirstName, LastName)
VALUES 
('Renan', 'Borba'),
('Rafael', 'Silva'),
('Paulo', 'Souza'),
('Rafael', 'Souza'),
('Guilherme', 'Silva'),
('Rafael', 'Chaves'),
('Ricardo', 'Dias'),
('Barbára', 'Silva');


SELECT * FROM dbo.People


-- CRIAR STORED PROCEDURE
CREATE PROCEDURE dbo.spPeople_GetAll
AS
BEGIN
	SELECT PeopleId, FirstName, LastName
	FROM dbo.People;
END


-- EXECUTAR STORED PROCEDURE
EXEC dbo.spPeople_GetAll


-- ALTERAR STORED PROCEDURE
ALTER PROCEDURE dbo.spPeople_GetAll
AS
BEGIN
	SET NOCOUNT ON;
	
	SELECT PeopleId, FirstName, LastName
	FROM dbo.People;
END


-- CRIAR STORED PROCEDURE COM VARIÁVEL
-- USE Nome_BancoDados
-- GO
CREATE PROCEDURE dbo.spPeople_GetByLastName
	@LastName NVARCHAR(50)
AS
BEGIN
	SET NOCOUNT ON;

	SELECT PeopleId, FirstName, LastName
	FROM dbo.People
	WHERE LastName = @LastName
END

EXEC dbo.spPeople_GetByLastName 'Borba'


-- ALTERAR STORED PROCEDURE COM VARIÁVEL
ALTER PROCEDURE dbo.spPeople_GetByLastName
	@FirstName NVARCHAR(50),
	@LastName NVARCHAR(50)
AS
BEGIN

	SELECT PeopleId, FirstName, LastName
	FROM dbo.People
	WHERE FirstName = @FirstName AND LastName = @LastName
END

EXEC dbo.spPeople_GetByLastName 'Renan', 'Borba'


-- ROLE DE SEGURANÇA - FUNÇÃO DE ACESSO: APENAS COM ACESSO
CREATE ROLE dbStoredProcedureOnlyAccess

/* 
CONCEDER EXECUÇÃO PARA ESSE NOME DE PAPEL
    PERMITE APENAS O USUÁRIO P/ CHAMAR OS PROCEDIMENTOS DE ARMAZENAMENTO,
		SEM ACESSO TOTAL A OUTRAS TABELAS E COLUNAS OMITIDAS
*/
GRANT EXECUTE TO dbStoredProcedureOnlyAccess

/*
> APÓS, CRIAR USUÁRIO E CONFIGURAR MÉTODO DE AUTENTICAÇÃO (AUTENT. DO SQL SERVER)
	> DEPOIS, MAPEAMENTO DE USUÁRIO > SELECIONAR O BD > ASSOCIAR A FUNÇÃO
*/




