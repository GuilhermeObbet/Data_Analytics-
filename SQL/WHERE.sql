
--Chamando a coluna Name para saber os nomes dos produtos que estão na condição pedida--

SELECT Name
FROM Production.Product
WHERE Weight > 500 and Weight < 700

--Chamando a tabela HumanResources.Employee para saber os casados e assalariados--

SELECT *
FROM HumanResources.Employee
WHERE MaritalStatus = 'M' and SalariedFlag = 1

-- Chamando as tabelas Person.Person e Person.EmailAddress para achar o email do Peter--

SELECT *
FROM Person.Person
WHERE FirstName = 'Peter'and LastName = 'Krebs'

SELECT *
FROM Person.EmailAddress
WHERE BusinessEntityId = 26
