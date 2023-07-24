SELECT *
FROM Person.Person
WHERE LastName = 'miller' AND FirstName = 'anna'


SELECT *
FROM Production.Product
WHERE color = 'blue' OR color = 'black'


SELECT *
FROM Production.Product
WHERE ListPrice > 1000 AND ListPrice <= 5000


SELECT *
FROM Production.Product
WHERE Color <> 'red'


-- Desafio 1
SELECT Name
FROM Production.Product
WHERE Weight > 500 AND Weight <= 700


-- Desafio 2
SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'm' AND SalariedFlag = 1


-- Desafio 3
SELECT *
FROM person.Person
WHERE FirstName = 'Peter' AND LastName = 'Krebs'

SELECT *
FROM person.EmailAddress
WHERE BusinessEntityID = 26