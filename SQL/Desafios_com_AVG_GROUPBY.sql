
-- GROUP BY --

SELECT *
FROM Sales.SalesOrderDetail

-- Fazendo uma soma dos preços unitários de acordo com seu ID --

SELECT SpecialOfferID, SUM (UnitPrice) AS 'Soma'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produto foi vendido até hj --

SELECT ProductID, COUNT (ProductID) AS 'Total de Cada Produto'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos Nomes de cada nome tem cadastrado --

SELECT FirstName, COUNT (FirstName) AS 'Total de cada nome'
FROM Person.Person
GROUP BY FirstName

-- Saber a média de preços dos produtos silver --

SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) AS 'Média preço silver'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

-- OBS, para usar o nome de uma coluna antes do AVG, é preciso usá-la depois em group by, senão ñ dará ceerto --