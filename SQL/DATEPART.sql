
-- DATAPART --

SELECT *
FROM Sales.SalesOrderHeader

SELECT SalesOrderID, DATEPART(DAY, OrderDate) AS DIa
FROM Sales.SalesOrderHeader
ORDER BY Dia asc

-- Média do Total Due --

SELECT AVG(TotalDue) as media, DATEPART(MONTH, OrderDate) as Mes
FROM Sales.SalesOrderHeader
GROUP BY DATEPART(MONTH, OrderDate) -- SEMPRE QUE USAR O AVG E ETC,TEM Q USAR O GROUP BY --
ORDER BY Mes asc

SELECT SalesOrderID, DATEPART(M, ShipDate), DATEPART(YYYY, DueDate)
FROM Sales.SalesOrderHeader



