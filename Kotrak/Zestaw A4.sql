select * from
Production.TransactionHistory
where TransactionDate between GETDATE() and DATEADD(MONTH, -3, GETDATE()) 
