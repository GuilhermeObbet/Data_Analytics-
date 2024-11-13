
-- UNION, combina dois ou mais resultados de um SELECT em um resultado apenas --
-- Remove os dados DUPLICADOS --

SELECT FirstName, MiddleName, Title
FROM Person.Person
WHERE Title = 'Mr.'
 UNION
SELECT FirstName, MiddleName, Title
FROM Person.Person
WHERE MiddleName = 'A'
