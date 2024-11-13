-- Desafio quantos produtos cadastrados custam mais q 1500 --

SELECT *
FROM Production.Product

SELECT COUNT (ListPrice)
FROM Production.Product
WHERE ListPrice > 1500

-- Quantas pessoas cadastradas q iniciam o sobrenome com a letra P --
SELECT COUNT (*)
FROM Person.Person
WHERE LastName LIKE 'P%'

-- Quantas cidades únicas estão cadastrados nossos clientes --

SELECT COUNT (DISTINCT (City))
FROM Person.Address

-- Quais são as cidades únicas --

SELECT DISTINCT City  
FROM Person.Address

-- Quantos produtos vermelhos tem entre 500 e 1000 --

SELECT COUNT (*)
FROM Production.Product
WHERE Color = 'Red' AND ListPrice BETWEEN 500 AND 1500

-- Quantos produtos cadastrados tem a palavra road no nome deles --

SELECT COUNT (*)
FROM Production.Product
WHERE Name LIKE '%Road%' 