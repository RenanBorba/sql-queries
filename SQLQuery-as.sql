SELECT TOP 10 ListPrice AS Preço
FROM Production.Product

SELECT TOP 10 AVG(ListPrice) AS "Preço médio"
FROM Production.Product

SELECT TOP 10 FirstName AS "Nome", LastName AS "Sobrenome"
FROM Person.Person

SELECT TOP 10 ProductNumber AS "Número do produto"
FROM Production.Product

SELECT UnitPrice AS "PREÇO UNITÁRIO"
FROM Sales.SalesOrderDetail