
-- SELF JOIN, liga uma tabela a ela mesma --
--É preciso usar com AS no FROM, como atalho, ñ precisa escrever AS, somente dar um espaço --

--SELECT NOME_COLUNA
--FROM TABELA A, TABELA B
--WHERE CONDIÇÃO

SELECT *
FROM CUSTOMERS

-- PUXANDO TODOS OS CLIENTES QUE MORAM NA MESMA REGIÃO, PARA ISSO USA O SELF JOIN --
-- Primeiro seleciona a coluna que quer consultar, com a abrev. separada por ponto, geralmete usa A e B --
-- no FROM chama a tabela denominando a abrev., geralmete usa A e B, a mesma tabela --
-- No WHERE vc iguala a coluna que esta verificando, separadas por ponto pela abrev. que foi dada no FROM --

SELECT A.ContactName, B.ContactName
FROM customers A, customers B
WHERE B.region = A.region

-- Verificando se realmente funcionou --

SELECT A.ContactName, B.region, B.ContactName, A.region
FROM customers A, customers B
WHERE B.region = A.region

-- Primeiro seleciona a coluna que quer consultar, com a abrev. separada por ponto, geralmete usa A e B --
-- no FROM chama a tabela denominando a abrev., geralmete usa A e B, a mesma tabela --
-- No WHERE vc iguala a coluna que esta verificando, separadas por ponto pela abrev. que foi dada no FROM --

-- Saber o nome e data de contratação dos funcionários que foram contratados no msm ano --

SELECT TOP 10*
FROM EMPLOYEES

SELECT A.FirstName, A.LastName,A.HireDate, B.FirstName, B.LastName, B.HireDate
FROM EMPLOYEES A, EMPLOYEES B
WHERE DATEPART(YEAR,a.HireDate) = DATEPART(YEAR,B.HireDate) -- DATAPART(), SERVEPARA EXTRAIR DA DATA DA COLUNA --

-- Saber quais produtos tem o mesmo percentual de desconto --

SELECT TOP 10*
FROM [Order Details]

SELECT A.ProductID, A.Discount, B.ProductID, B.Discount
FROM [Order Details] A, [Order Details] B -- Usa os colchetes qnd o nome da tabela tem espaço --
WHERE A.Discount = B.Discount