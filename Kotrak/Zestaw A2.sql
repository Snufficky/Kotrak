
SELECT *
  FROM [AdventureWorks2022].[Sales].[SalesOrderHeader] as soh
left join Sales.SalesOrderDetail as sod on sod.SalesOrderID = soh.SalesOrderID
left join Production.Product as prod on prod.ProductID = sod.ProductID
where PurchaseOrderNumber is null