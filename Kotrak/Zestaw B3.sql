begin transaction
delete from pubs.dbo.jobs 
SAVE TRANSACTION DeleteTransaction
ROLLBACK TRANSACTION DeleteTransaction
select * from pubs.dbo.jobs
