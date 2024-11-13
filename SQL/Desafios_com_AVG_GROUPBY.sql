
-- GROUP BY --

SELECT *
FROM Sales.SalesOrderDetail

-- Fazendo uma soma dos pre�os unit�rios de acordo com seu ID --

SELECT SpecialOfferID, SUM (UnitPrice) AS 'Soma'
FROM Sales.SalesOrderDetail
GROUP BY SpecialOfferID

-- Quantos de cada produto foi vendido at� hj --

SELECT ProductID, COUNT (ProductID) AS 'Total de Cada Produto'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- Quantos Nomes de cada nome tem cadastrado --

SELECT FirstName, COUNT (FirstName) AS 'Total de cada nome'
FROM Person.Person
GROUP BY FirstName

-- Saber a m�dia de pre�os dos produtos silver --

SELECT *
FROM Production.Product

SELECT Color, AVG(ListPrice) AS 'M�dia pre�o silver'
FROM Production.Product
WHERE Color = 'Silver'
GROUP BY Color

-- OBS, para usar o nome de uma coluna antes do AVG, � preciso us�-la depois em group by, sen�o � dar� ceerto --