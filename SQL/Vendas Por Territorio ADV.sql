USE AdventureWorksDW2022

SELECT

SUM (SalesAmount) AS Total,
SalesTerritoryCountry AS Territory 

FROM FactInternetSales
INNER JOIN DimSalesTerritory ON DimSalesTerritory.SalesTerritoryKey = FactInternetSales.SalesTerritoryKey
GROUP BY
SalesTerritoryCountry
ORDER BY
Total DESC
