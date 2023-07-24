SELECT *
FROM Person.person
WHERE FirstName like 'ovi%';


-- mais de uma letra após a seleção
SELECT *
FROM Person.person
WHERE FirstName like '%essa%';


-- limita apenas uma letra após a seleção
SELECT *
FROM Person.person
WHERE FirstName like '%ro_';


SELECT *
FROM Person.person
WHERE FirstName like '%to' and LastName like 'do%';


/* DESAFIO FUNDAMENTOS SQL

DESAFIO 1 */

SELECT COUNT(ListPrice)
FROM Production.Product
WHERE ListPrice > 1500


-- DESAFIO 2

SELECT COUNT(LastName)
FROM Person.Person
WHERE LastName LIKE 'P%'


-- DESAFIO 3

SELECT COUNT(DISTINCT(City))
FROM Person.Address


-- DESAFIO 4

SELECT DISTINCT(City)
FROM Person.Address


-- DESAFIO 5

SELECT COUNT(*)
FROM Production.Product
WHERE color = 'red' 
and ListPrice between 500 and 1000


-- DESAFIO 6

SELECT COUNT(*)
FROM Production.Product
WHERE Name like '%road%'


