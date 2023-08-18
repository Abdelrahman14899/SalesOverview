--Cleansed Dim_Date Table--

SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date, 
  --,[DayNumberOfWeek], 
  [EnglishDayNameOfWeek] As Day, 
  --,[SpanishDayNameOfWeek] 
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  [WeekNumberOfYear] As WeekNr, 
  [EnglishMonthName] As Month, 
  (left([EnglishMonthName], 3)) as MonthShort, 
  --,[SpanishMonthName] 
  --,[FrenchMonthName] 
  [MonthNumberOfYear] As MonthNo, 
  [CalendarQuarter] As Quarter, 
  [CalendarYear] As Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear] 
  --,[FiscalSemester]
FROM
  DimDate
where 
  CalendarYear between 2019 and 2021;
