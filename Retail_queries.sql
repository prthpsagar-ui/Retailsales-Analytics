CREATE DATABASE RetailProject;

USE RetailProject;

SELECT TOP (1000) [Order_ID]
      ,[Customer_ID]
      ,[Product]
      ,[Category]
      ,[Quantity]
      ,[Unit_Price]
      ,[Region]
      ,[Order_Date]
  FROM [RetailProject].[dbo].[retail_sales]

;WITH Cleaned AS (
    SELECT *, ISNULL(Quantity, 1) AS Clean_Quantity,
       ISNULL(Unit_Price, (SELECT AVG(Unit_Price) FROM retail_sales WHERE Unit_Price IS NOT NULL)) AS Clean_UnitPrice,
        
        CASE 
            WHEN Order_Date IS NULL OR LTRIM(RTRIM(Order_Date)) = '' THEN '2025-01-01'
            ELSE Order_Date
        END AS Clean_OrderDate,
        
        UPPER(LTRIM(RTRIM(Region))) AS Clean_Region
    FROM retail_sales
)

UPDATE rs
SET 
    rs.Quantity = c.Clean_Quantity,
    rs.Unit_Price = c.Clean_UnitPrice,
    rs.Order_Date = c.Clean_OrderDate,
    rs.Region = c.Clean_Region
FROM retail_sales rs
JOIN Cleaned c
ON rs.Order_ID = c.Order_ID;

SELECT *
FROM retail_sales
WHERE Quantity IS NULL
   OR Unit_Price IS NULL
   OR Order_Date IS NULL;