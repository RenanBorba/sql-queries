SELECT * FROM Person.Person

CREATE VIEW [Pessoas Simplificado] AS
SELECT FirstName, MiddleName, LastName
FROM Person.Person
WHERE Title = 'Ms.'

SELECT * FROM [Pessoas Simplificado]

CREATE VIEW [Contas E-mail Simplificado] AS
SELECT P.BusinessEntityId, P.FirstName, P.LastName, E.EmailAddress
FROM Person.Person P
INNER JOIN Person.EmailAddress E ON P.BusinessEntityId = E.BusinessEntityId

SELECT * FROM [Contas E-mail Simplificado]