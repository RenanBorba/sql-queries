-- FUNÇÕES MATÉMÁTICAS SQL SERVER

SELECT UnitPrice + LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice - LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice * LineTotal
FROM Sales.SalesOrderDetail

SELECT UnitPrice / LineTotal
FROM Sales.SalesOrderDetail

-- ARREDONDAMENTO COM PRECISÃO DECIMAL 2
SELECT ROUND(LineTotal,2)
FROM Sales.SalesOrderDetail

SELECT ROUND(LineTotal,2) AS ARREDONDAMENTO, LineTotal
FROM Sales.SalesOrderDetail

-- RAÍZ QUADRADA
SELECT SQRT(LineTotal)
FROM Sales.SalesOrderDetail

