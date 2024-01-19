/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000)
  ROW_NUMBER() OVER(
  order by transactionDate
  ) 
      [ProductID]
      ,[ReferenceOrderID]
      ,[ReferenceOrderLineID]
      ,[TransactionDate]
      ,[TransactionType]
      ,[Quantity]
      ,[ActualCost]
      ,[ModifiedDate]
  FROM [AdventureWorks2022].[Production].[TransactionHistory]