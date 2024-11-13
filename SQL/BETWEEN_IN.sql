
-- BETWEEN--

SELECT *
FROM Production.Product
WHERE ListPrice BETWEEN 1000 and 1500

-- NOT BETWEEN --

SELECT *
FROM Production.Product
WHERE ListPrice NOT BETWEEN 1000 and 1500

-- BETWEEN COM DATAS --

SELECT *
FROM HumanResources.Employee
WHERE HireDate BETWEEN '2009/01/01' AND '2010/01/01'
ORDER BY HireDate asc

-- In --
SELECT *
FROM Person.Person
WHERE BusinessEntityID IN (2,3,5)

-- NOT IN --

SELECT *
FROM Person.Person
WHERE BusinessEntityID NOT IN (2,3,5)

-- LIKE, OBS, o percentual no final significa que vc só lembra o início. E virse e versa --

SELECT *
FROM Person.Person
WHERE FirstName like 'ovi%'

SELECT *
FROM Person.Person
WHERE FirstName like '%ro'

-- E usando no final e no inicio, significa que tu só lembra o meio --

SELECT *
FROM Person.Person
WHERE FirstName like '%essa%'
