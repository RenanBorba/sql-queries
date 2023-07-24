SELECT *
FROM Sales.SalesOrderDetail

SELECT SpecialOfferID, UnitPrice
FROM Sales.SalesOrderDetail
WHERE SpecialOfferID = 9

SELECT SpecialOfferID, SUM(UnitPrice) AS "SOMA"
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID 
ORDER BY SpecialOfferID ASC

-- EX.: Vamos dizer que eu quero saber a quantidade de venda de cada produto at� hoje:
SELECT * FROM Sales.SalesOrderDetail

SELECT ProductID, COUNT(ProductID) AS "CONTAGEM"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY ProductID ASC

-- EX.: Vamos dizer que eu quero saber quantos nomes de cada nome temos cadastrados em nosos banco de dados:
SELECT FirstName, COUNT(FirstName) AS "CONTAGEM"
FROM Person.Person
GROUP BY FirstName
ORDER BY FirstName ASC

-- EX.: Da tabela production.product eu quero saber a m�dia de pre�o p/ os produtos pratas(silver):
SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) AS "Soma"
FROM Production.Product
WHERE Color = 'silver'
GROUP BY Color

-- EX.: Preciso saber quantas pessoas tem o mesmo MiddleName agrupados por MiddleName
SELECT MiddleName, COUNT(MiddleName) AS "CONTAGEM"
FROM Person.Person
GROUP BY MiddleName

-- EX.: Preciso saber em m�dia qual � a quantidade(quantity) que cada produto � vendido na loja:
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- EX.: Quero saber qual foram as 10 vendas que no total tiveram os maiores valores de venda (line total) por produto do maior para o menor
SELECT ProductID, AVG(OrderQty) AS "Media"
FROM Sales.SalesOrderDetail
GROUP BY ProductID

SELECT TOP 10 ProductID, SUM(LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC;

-- EX.: Preciso saber quantos produtos e qual a qtd m�dia de produtos temos cadastrados nas nossas ordens de servi�o (WorkOrder), agrupados por productID
SELECT *
FROM Production.WorkOrder

SELECT ProductID, COUNT(ProductID) AS "QTD_PROD", 
AVG(OrderQty) AS "MEDIA_PRODUTOS"
FROM Production.WorkOrder
GROUP BY ProductID

