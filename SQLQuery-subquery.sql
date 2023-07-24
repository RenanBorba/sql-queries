-- Monte um relatório para mim de todos os produtos cadastrados que tem preço de venda acima da média

SELECT *
FROM Production.Product

/*
SELECT AVG(ListPrice)
FROM Production.Product

SELECT *
FROM Production.Product
WHERE ListPrice > 438.66
*/

-- CORRETO:
SELECT *
FROM Production.Product
WHERE ListPrice > (SELECT AVG(ListPrice) FROM Production.Product)

-- Quero saber o nome dos meus funcionários que tem cargo de 'Design Engineer'

/*
SELECT *
FROM Person.Person

SELECT *
FROM HumanResources.Employee
WHERE JobTitle = 'Design Engineer'
*/

SELECT FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID FROM HumanResources.Employee 
WHERE JobTitle = 'Design Engineer')

-- COM JOIN:
SELECT P.FirstName
FROM Person.Person P
INNER JOIN HumanResources.Employee E ON P.BusinessEntityID = E.BusinessEntityID
AND E.JobTitle = 'Design Engineer'

-- DESAFIO: Quero saber o nome dos meus funcionários que estão no estado de 'Alberta',
-- pode trazer todas informações 
SELECT *
FROM Person.Address
WHERE StateProvinceID IN (
SELECT StateProvinceID FROM Person.StateProvince
WHERE Name = 'Alberta')
