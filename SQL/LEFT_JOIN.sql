
--LEFT OUTER JOIN ou LEFT JOIN --

-- Saber QUAIS pessoas tem cartão de crédito registrado --
-- A melhor opção é usar o LEFT JOIN, pois com ele vc consegue puxar até os dados faltantes --
-- Diferente do INNER JOIN, que somente puxaria os dados existente --
-- Na pergunta ficou especifico qnd disse QUAIS, e não QUANTOS, pessoas possuem CredCard registrado --

SELECT *
FROM Person.Person as PP
LEFT JOIN Sales.PersonCreditCard AS PC ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL -- Para achar somente os clientes que ñ tem credcard registrado --


