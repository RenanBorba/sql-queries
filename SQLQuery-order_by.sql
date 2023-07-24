SELECT *
FROM Person.Person
ORDER BY FirstName asc

SELECT *
FROM Person.Person
ORDER BY FirstName desc


SELECT FirstName, LastName
FROM Person.Person
ORDER BY FirstName, LastName desc

SELECT FirstName, LastName
FROM Person.Person
ORDER BY MiddleName desc


-- DESAFIO 1

SELECT *
FROM Production.Product

SELECT TOP 10 ProductID
FROM Production.Product
ORDER BY ListPrice desc

-- DESAFIO 2

SELECT TOP 4 Name,ProductNumber
FROM Production.Product
ORDER BY ProductID asc




