SELECT *
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(month, OrderDate) AS Mês
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS Dia
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(Year, OrderDate) AS Dia
FROM Sales.SalesOrderHeader

SELECT AVG(TotalDue) Média, DATEPART(MONTH, OrderDate) AS Mês
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate)
ORDER BY Mês ASC

SELECT *
FROM Production.Product

SELECT SellEndDate, DATEPART(MONTH, SellEndDate)
FROM Production.Product
WHERE SellEndDate IS NOT NULL