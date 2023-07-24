-- LEFT OUTER JOIN
-- LEFT JOIN

-- Quero descobrir quais pessoas têm um cartão de crédito registrado
SELECT *
FROM Person.Person

SELECT *
FROM Sales.PersonCreditCard

SELECT *
FROM Person.Person P
INNER JOIN Sales.PersonCreditCard S
ON P.BusinessEntityID = S.BusinessEntityID
-- INNER JOIN: 19118

SELECT *
FROM Person.Person P
LEFT JOIN Sales.PersonCreditCard S
ON P.BusinessEntityID = S.BusinessEntityID
-- LEFT JOIN: 19972

SELECT *
FROM Person.Person P
RIGHT JOIN Sales.PersonCreditCard S
ON P.BusinessEntityID = S.BusinessEntityID

SELECT 19972 - 19118

SELECT *
FROM Person.Person P
LEFT JOIN Sales.PersonCreditCard S
ON P.BusinessEntityID = S.BusinessEntityID
WHERE S.BusinessEntityID IS NULL

SELECT *
FROM Person.Person P
LEFT JOIN Sales.PersonCreditCard S
ON P.BusinessEntityID = S.BusinessEntityID
WHERE S.BusinessEntityID IS NOT NULL

