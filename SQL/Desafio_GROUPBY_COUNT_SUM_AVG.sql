
-- Quantas pessoas tem o msm MiddleName agrupadas por MiddleName --

SELECT MiddleName, COUNT (MiddleName)
FROM Person.Person
GROUP BY MiddleName

-- Qual a m�dia de cada produto vendido na loja --

SELECT ProductID, AVG(OrderQty) AS 'M�dia de Vendas'
FROM Sales.SalesOrderDetail
GROUP BY ProductID

-- As 10 vendas que no total tiveram o maior valor de venda por produto do maior para o menor --


SELECT TOP 10 ProductID, SUM (LineTotal)
FROM Sales.SalesOrderDetail
GROUP BY ProductID
ORDER BY SUM(LineTotal) DESC

-- Quantos produtos e qual a quantidade m�dia de produtos temos cadastrados na ordem de serivi�o --

SELECT *
FROM Production.WorkOrder

SELECT ProductID, COUNT(ProductID) AS 'Contagem', AVG (WorkOrderID) AS 'M�dia'
FROM Production.WorkOrder
GROUP BY ProductID