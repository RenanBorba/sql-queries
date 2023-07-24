-- BusinessEntityId, FirstName, LastName, EmailAddress
SELECT TOP 10 *
FROM Person.Person

SELECT TOP 10 *
FROM Person.EmailAddress

SELECT P.BusinessEntityId, P.FirstName, P.LastName, E.EmailAddress
FROM Person.Person P
INNER JOIN Person.EmailAddress E ON P.BusinessEntityId = E.BusinessEntityId

/*
SELECT P.BusinessEntityId, P.FirstName, P.LastName, E.EmailAddress
FROM Person.Person AS P -> ALIAS 
INNER JOIN Person.EmailAddress E ON P.BusinessEntityId = E.BusinessEntityId
*/

-- Vamos dizer que nós queremos os nomes dos produtos e as informações de suas subcategorias
-- ListPrice, Nome do Produto, Nome da Subcategoria
SELECT TOP 10 *
FROM Production.Product

SELECT TOP 10 *
FROM Production.ProductSubcategory

SELECT TOP 10 P.ListPrice, P.Name, S.Name
FROM Production.Product P
INNER JOIN Production.ProductSubcategory S ON P.ProductSubcategoryID = S.ProductSubcategoryID

--
SELECT TOP 10 *
FROM Person.BusinessEntityAddress

SELECT TOP 10 *
FROM Person.Address

SELECT TOP 10 *
FROM Person.BusinessEntityAddress BA
INNER JOIN Person.Address PA ON PA.AddressID = BA.AddressID

-- EX: BusinessEntityId, Name, PhoneNumberTypeId, PhoneNumber
SELECT TOP 10 *
FROM Person.PhoneNumberType

SELECT TOP 10 *
FROM Person.PersonPhone

/*
SELECT PP.BusinessEntityID, PN.Name, PN.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PhoneNumberType PN
INNER JOIN Person.PersonPhone PP ON PN.PhoneNumberTypeID = PP.PhoneNumberTypeID
*/

SELECT PP.BusinessEntityID, PN.Name, PN.PhoneNumberTypeID, PP.PhoneNumber
FROM Person.PersonPhone PP
INNER JOIN Person.PhoneNumberType PN ON PN.PhoneNumberTypeID = PP.PhoneNumberTypeID

-- EX: AddressId, City, StateProvinceId, Nome do Estado
SELECT TOP 10 *
FROM Person.StateProvince

SELECT TOP 10 *
FROM Person.Address

SELECT A.AddressID, A.City, S.StateProvinceID, S.Name
FROM Person.Address A
INNER JOIN Person.StateProvince S ON A.StateProvinceID = S.StateProvinceID



