DECLARE @EmployeeId int

with employee_information
as (
	select employee.emp_id, employee.fname, employee.hire_date, employee.job_id, employee.job_lvl, employee.lname, employee.minit, employee.pub_id
	from pubs.dbo.employee 
	left join dbo.jobs as jobs on pub_id = emp_id
	where employee.emp_id = @EmployeeId
)
select *
from employee_information 