
--COUNT--

SELECT *
FROM Person.Person

SELECT COUNT (*)
FROM Person.Person

SELECT COUNT (DISTINCT Title)
FROM Person.Person

SELECT COUNT (Title)
FROM Person.Person

-- Desafio 1, saber quantos produtos cadastrados tem na tabela de produtos --

SELECT COUNT (DISTINCT Name)
FROM Production.Product

-- Desafio 2, quantos tamanhos de produtos tem cadastrado na tabela --

SELECT COUNT (DISTINCT Size)
FROM Production.Product

-- Comando TOP --

SELECT TOP 100*
FROM Person.Person

-- Comando ORDER BY --

SELECT *
FROM Person.Person
ORDER BY FirstName asc

SELECT *
FROM Person.Person
ORDER BY FirstName desc

-- Desafio, obter os 10 produtos mais caros do sistema e ordená-los por ordem desc --

SELECT TOP 10*
FROM Production.Product
ORDER BY ListPrice desc

-- OU --
SELECT TOP 10 ProductID 
FROM Production.Product
ORDER BY ListPrice desc

-- Nome e Nu dos produtos q tem um productID de 1 a 4 --

SELECT TOP 4 Name, ProductNumber 
FROM Production.Product
ORDER BY ProductID asc