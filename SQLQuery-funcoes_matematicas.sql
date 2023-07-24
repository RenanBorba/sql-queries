-- FUN��ES MAT�M�TICAS SQL SERVER

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail

-- ARREDONDAMENTO COM PRECIS�O DECIMAL 2
SELECT ROUND(LineTotal,2)
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal,2) AS ARREDONDAMENTO, LineTotal
FROM Sales.SalesOrderDetail

-- RA�Z QUADRADA
SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail

