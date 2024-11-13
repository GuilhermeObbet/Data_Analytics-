
-- HAVING, vc s� pode usar o HAVING ap�s o GROUP BY --

SELECT FirstName, COUNT (FirstName) AS 'Quantidade'
FROM Person.Person
GROUP BY FirstName 
HAVING COUNT (FirstName) > 10 

-- As provincias com maior n de cadastro, ent�o � preciso encontrar quais que est�o cadastradas mais de 1000 --

SELECT *
FROM Person.Address

SELECT StateProvinceID,	COUNT (StateProvinceID)
FROM Person.Address
GROUP BY StateProvinceID
HAVING COUNT (StateProvinceID) > 1000 

-- Quais produtos � est�o trazendo, em m�dia, 1m em total de vendas --

SELECT *
FROM Sales.SalesOrderDetail

SELECT ProductID, AVG (LineTotal) AS 'M�dia de Produtos'
FROM Sales.SalesOrderDetail
GROUP BY ProductID
HAVING AVG (LineTotal) < 1000000

-- AS, serve para alterar o nome de um tabela --

SELECT Suffix as 'Sufixo'
FROM Person.Person








