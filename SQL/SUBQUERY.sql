
-- SUBQUERY --
-- Serve para vc fazer uma busca dentro da mesma tabela, assim o resultado retorna a tabela com a condição dada --
-- Usado no WHERE dentro dos parenteses --

SELECT *
FROM Production.Product
WHERE ListPrice > ( SELECT AVG(ListPrice) FROM Production.Product )

SELECT TOP 10*
FROM HumanResources.Employee

SELECT *
FROM Person.Person

SELECT FirstName, LastName
FROM Person.Person
WHERE BusinessEntityID IN (
SELECT BusinessEntityID
FROM HumanResources.Employee 
WHERE JobTitle = 'Design Engineer' )
-- Usa o IN qnd puxa de outra tabela --

-- Encontrar todos os address que estão no estado de Alberta --

SELECT *
FROM Person.StateProvince

SELECT *
FROM Person.Address

SELECT *
FROM Person.Address
WHERE StateProvinceID in (SELECT StateProvinceID
FROM Person.StateProvince 
WHERE Name = 'Alberta' )


