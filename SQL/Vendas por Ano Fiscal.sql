USE AdventureWorksDW2022

SELECT

SUM (SalesAmount)AS Total,
FiscalYear AS Ano

FROM FactInternetSales
INNER JOIN DimDate ON DimDate.DateKey = FactInternetSales.DueDateKey
GROUP BY
FiscalYear
ORDER BY 
FiscalYear DESC
