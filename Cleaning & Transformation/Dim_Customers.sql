--Cleansed Dim_Customers Table--

SELECT
  c.customerkey AS CustomerKey,
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  c.firstname AS [First Name],
        -- ,[MiddleName], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  --,[NameStyle]
  --,[BirthDate]
  -- ,[MaritalStatus]
  -- ,[Suffix]
  case c.Gender when 'M' then 'Male' when 'F' then 'Female' End AS Gender, 
  --      ,[EmailAddress]
  --      ,[YearlyIncome]
  --      ,[TotalChildren]
  --      ,[NumberChildrenAtHome]
  --      ,[EnglishEducation]
  --      ,[SpanishEducation]
  --      ,[FrenchEducation]
  --      ,[EnglishOccupation]
  --      ,[SpanishOccupation]
  --      ,[FrenchOccupation]
  --      ,[HouseOwnerFlag]
  --      ,[NumberCarsOwned]
  --      ,[AddressLine1]
  --      ,[AddressLine2]
  --      ,[Phone]
  c.DateFirstPurchase AS DateFirstPurchase ,
  --      ,[CommuteDistance]
  g.city AS [Customer City]  -- Joined in Customer City From Geography Table
FROM 
  DimCustomer c 
  left join DimGeography g on c.GeographyKey = g.GeographyKey 
order by 
  CustomerKey asc;
