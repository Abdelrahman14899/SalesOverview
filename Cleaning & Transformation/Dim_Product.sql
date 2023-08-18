--Cleansed Dim_Product Table--

SELECT 
  ProductKey, 
  p.ProductAlternateKey AS ProductItemCode, 
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  p.EnglishProductName AS ProductName, 
  pc.EnglishProductCategoryName AS [Product Category] ,-- Joined in from Category Table
  ps.EnglishProductsubcategoryName As [Sub Category] , --Joined in from SubCategory Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.Color AS [Product Color] ,
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  -- ,[ListPrice]
  p.Size As [Product Size],
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  p.ProductLine AS [Product Line] ,
  --,[DealerPrice]
  --,[Class]
  --,[Style]
  p.ModelName AS [Product Model Name] ,
  --,[LargePhoto] 
  p.EnglishDescription AS [Product Description], 
  --,[FrenchDescription]
  --,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  -- ,[StartDate]
  --,[EndDate]
  ISNUll (p.Status, 'Outdated') AS [Product Status] 
FROM 
  Dimproduct p 
  left Join DimProductSubcategory ps on p.ProductSubcategoryKey = ps.ProductSubcategoryKey 
  left join DimProductCategory pc on ps.productcategorykey = pc.productcategorykey 
order by 
  productkey;
