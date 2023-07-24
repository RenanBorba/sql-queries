SELECT *
FROM Customers

-- Eu quero todos os clientes que moram na mesma região

SELECT A.ContactName, A.Region, B.ContactName, B.Region
FROM Customers A, Customers B
WHERE A.Region = B.Region

/* Quero encontrar (nome e data contratação) de todos os 
funcionários que foram contratados no mesmo ano */

SELECT *
FROM Employees


SELECT A.FirstName, A.HireDate, B.FirstName, B.HireDate
FROM Employees A, Employees B
WHERE DATEPART(YEAR, A.HireDate) = DATEPART(YEAR, B.HireDate)
-- DATEPART(YEAR, A.HireDate) -> particionar a data em apenas ano na pesquisa 

-- DESAFIO: Quero saber na tabela detalhe do pedido (Order Details) 
-- quais produtos tem o mesmo percentual de desconto

SELECT *
FROM [Order Details]

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B
WHERE A.Discount = B.Discount