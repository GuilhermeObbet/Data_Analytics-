 
 -- Primeiro passo CREATE DATABASE PythonSQL

 -- Segundo Passo USE PythonSQL

 -- Terceiro Passo CREATE TABLE Vendas (
 --	id_venda int,
 --	cliente varchar(50),
 --	produto varchar(50),
 --	data_venda date,
 --	preco decimal(6,2),
 --	quantidade
 -- )

    INSERT INTO Vendas(id_venda, cliente, produto, data_venda, preco, quantidade)
    VALUES
 	(1, 'Guilherme', 'Ipad', '01/06/2024', 7500, 1)

 USE PythonSQL

 SELECT * FROM Vendas