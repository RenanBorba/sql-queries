SELECT CONCAT (FirstName, LastName)
FROM Person.Person

SELECT CONCAT (FirstName, ' ', LastName) AS 'Nome completo'
FROM Person.Person

SELECT UPPER(FirstName) NOME, LOWER(LastName) SOBRENOME
FROM Person.Person

SELECT FirstName, LEN(FirstName) 'Contagem de caracteres'
FROM Person.Person

-- SUBSTRING(FirstName, 1, 3) -> começa no índice 1, no caso a primeira letra, e conta 3 caracteres e extrai o texto)
SELECT FirstName, SUBSTRING(FirstName, 1, 3) AS EXTRAÇÃO
FROM Person.Person

SELECT *
FROM Production.Product

-- Substitui o valor encontrado na string por outro
SELECT ProductNumber, REPLACE(ProductNumber, '-', '#')
FROM Production.Product
