-- Vamos dizer que queremos saber quais nomes no sistema tem uma ocorrência maior que 10 vezes

SELECT FirstName, COUNT(FirstName) AS "Quantidade"
FROM Person.Person
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

-- Por exemplo, queremos saber quais produtos que no total de vendas estão entre 162k a 500k
SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, SUM(LineTotal) AS "TOTAL"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING SUM(LineTotal) BETWEEN 162000 AND 500000

-- Quero saber quais nomes no sistema tem uma ocorrência maior que 10 vezes, porém somente ONDE o título é 'Mr.'
SELECT FirstName, COUNT(FirstName) AS "QUANTIDADE"
FROM Person.Person
WHERE Title = 'Mr.'
GROUP BY FirstName
HAVING COUNT(FirstName) > 10

/* Estamos querendo identificar as provincias(stateProvincedId) com o maior numero de cadastros no nosso sistema, então é preciso 
   encontrar quais provincias(stateProvincedId) estão registradas no banco de dados mais que 1000 vezes. */
SELECT StateProvinceID, COUNT(StateProvinceID) AS "QUANTIDADE"
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT(StateProvinceID) > 1000

/* Sabendo que se trata de uma multinacional os gerentes querem saber quais produtos(productId) não estão trazendo em média
   no mínimo 1 milhão em total de vendas(lineTotal) */
SELECT ProductID, AVG(LineTotal) AS "QUANTIDADE"
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG(LineTotal) < 1000000


