
-- INNER JOIN, serve para dar um JOIN em duas tabela que contenha um msm nome de coluna --
-- OU juntar somente as colunas selecionadas, como no exemplo abaixo --

-- Queremos o nome do produto, preço e subcategoria, q se encontra em duas tabelas distintas --

SELECT *
FROM Production.Product

SELECT *
FROM Production.ProductSubcategory

-- SELECT as colunas que queira integrar na nova tabela, com as abrev. separadas por ponto. --
-- FROM o nome d atabela principal  COM ABREV. QUE FOI DADO NO SELECT USANDO AS--
-- Depois no INNER JOIN chama o nome da tabela secundaria junto a abreviação dada no SELECT separada por AS --
-- Depois usa o ON e iguala os nomes relativos das duas tabelas com a abreviação separados por ponto --

SELECT prod.Name, sub.Name as 'Sub Categoria', prod.ListPrice
FROM Production.Product AS prod
INNER JOIN Production.ProductSubcategory AS sub ON prod.ProductSubcategoryID = sub.ProductSubcategoryID

-- Aqui juntamos todas as colunas, juntamos as duas tabelas com mesmo nome em comum de coluna --

SELECT *
FROM Person.BusinessEntityAddress

SELECT *
FROM Person.Address

-- Para juntar as tabelas e todas as colunas, simplesmente chama o SELECT * FROM a Tabela principal com uma abrev. --
--INNER JOIN chama a tabela secundaria com a abrev, ON E iguala os nomes equivalentes com suas abrev separadas por pontos --

SELECT *
FROM Person.Address as PA
INNER JOIN Person.BusinessEntityAddress AS BEA ON PA.AddressID = BEA.AddressID

-- BusinessEntityID, Name, PhoneNumberTypeID, PhoneNumber --

SELECT *
FROM Person.PhoneNumberType

SELECT *
FROM Person.PersonPhone

-- SELECT as colunas que queira integrar na nova tabela, com as abrev. separadas por ponto. --
-- FROM o nome d atabela principal  COM ABREV. QUE FOI DADO NO SELECT USANDO AS--
-- Depois no INNER JOIN chama o nome da tabela secundaria junto a abreviação dada no SELECT separada por AS --
-- Depois usa o ON e iguala os nomes relativos das duas tabelas com a abreviação separados por ponto --


SELECT PT.Name, PT.PhoneNumberTypeID, PP.BusinessEntityID, PP.PhoneNumber
FROM Person.PhoneNumberType as PT
INNER JOIN Person.PersonPhone as PP on PP.PhoneNumberTypeID = PT.PhoneNumberTypeID

-- SELECT as colunas que queira integrar na nova tabela, com as abrev. separadas por ponto. --
-- FROM o nome d atabela principal  COM ABREV. QUE FOI DADO NO SELECT USANDO AS--
-- Depois no INNER JOIN chama o nome da tabela secundaria junto a abreviação dada no SELECT separada por AS --
-- Depois usa o ON e iguala os nomes relativos das duas tabelas com a abreviação separados por ponto --

-- AdressID, City, StateProvinceID, Nome do estado --

SELECT *
FROM Person.Address

SELECT *
FROM Person.StateProvince

SELECT PA.AddressID, PA.City, PA.StateProvinceID, PS.Name
FROM Person.Address AS PA
INNER JOIN Person.StateProvince as PS on PA.StateProvinceID = PS.StateProvinceID 