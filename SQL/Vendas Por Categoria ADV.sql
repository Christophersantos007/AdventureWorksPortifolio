USE AdventureWorksDW2022
-- Vendas Por Categoria--
SELECT
SUM (SalesAmount)AS Total,
EnglishProductCategoryName AS Categoria

from FactInternetSales
INNER JOIN DimProduct ON DimProduct.ProductKey = FactInternetSales.ProductKey
INNER JOIN DimProductSubcategory ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey
INNER JOIN DimProductCategory ON DimProductCategory.ProductCategoryKey = DimProductSubcategory.ProductCategoryKey
GROUP BY EnglishProductCategoryName
ORDER BY
Total DESC

USE AdventureWorksDW2022
-- Vendas Por SubCategoria--
SELECT
SUM (SalesAmount)AS Total,
EnglishProductSubcategoryName AS Subcategoria

from FactInternetSales
INNER JOIN DimProduct ON DimProduct.ProductKey = FactInternetSales.ProductKey
INNER JOIN DimProductSubcategory ON DimProductSubcategory.ProductSubcategoryKey = DimProduct.ProductSubcategoryKey

GROUP BY EnglishProductSubcategoryName
ORDER BY
Total DESC
