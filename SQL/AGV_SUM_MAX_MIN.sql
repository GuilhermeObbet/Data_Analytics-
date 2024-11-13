
SELECT TOP 10*
FROM Sales.SalesOrderDetail

-- SUM --

SELECT SUM(LineTotal) AS 'Soma Total'
FROM Sales.SalesOrderDetail

-- MIN --

SELECT TOP 10 MIN(UnitPrice) AS 'Menor Valor'
FROM Sales.SalesOrderDetail

-- MAX --

SELECT TOP 10 MAX(UnitPrice) AS 'Maior Valor'
FROM Sales.SalesOrderDetail

-- Média AVG --

SELECT TOP 10 AVG(UnitPrice) AS 'Média dos Valor'
FROM Sales.SalesOrderDetail
