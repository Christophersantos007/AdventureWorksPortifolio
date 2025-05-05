use AdventureWorksDW2022
--Total De Clientes--
SELECT 

COUNT (FirstName) AS Total_De_Clientes

FROM DimCustomer

--Genero Masculino--
SELECT 

COUNT (Gender) AS MASCULINO

FROM DimCustomer
WHERE Gender = 'M'

--Genero Feminino--
SELECT 

COUNT (Gender) AS FEMININO

FROM DimCustomer
WHERE Gender = 'F'

--Casado--
SELECT 

COUNT (MaritalStatus) AS CASADO

FROM DimCustomer
WHERE  MaritalStatus ='M'

--Solteiro--
SELECT 

COUNT (MaritalStatus) AS SOLTEIRO

FROM DimCustomer
WHERE  MaritalStatus ='S'


SELECT 

COUNT (TotalChildren ) AS Filhos

FROM DimCustomer
