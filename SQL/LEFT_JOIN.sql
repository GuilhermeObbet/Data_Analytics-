
--LEFT OUTER JOIN ou LEFT JOIN --

-- Saber QUAIS pessoas tem cart�o de cr�dito registrado --
-- A melhor op��o � usar o LEFT JOIN, pois com ele vc consegue puxar at� os dados faltantes --
-- Diferente do INNER JOIN, que somente puxaria os dados existente --
-- Na pergunta ficou especifico qnd disse QUAIS, e n�o QUANTOS, pessoas possuem CredCard registrado --

SELECT *
FROM Person.Person as PP
LEFT JOIN Sales.PersonCreditCard AS PC ON PP.BusinessEntityID = PC.BusinessEntityID
WHERE PC.BusinessEntityID IS NULL -- Para achar somente os clientes que � tem credcard registrado --


