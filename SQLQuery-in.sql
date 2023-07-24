SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,7,13);

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (1,2,3)

/* IGUAL:

SELECT *
FROM Person.Person
WHERE BusinessEntityID = 2
OR BusinessEntityID = 7
OR BusinessEntityID = 13

*/


