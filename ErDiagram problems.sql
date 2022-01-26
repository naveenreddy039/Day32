--#UC1
create database payroll_service
go

--#UC2
create table employee_payroll
(
	Id int Not null identity,
	Name varchar(Max),
	startDate datetime ,
	salary Money
)

--#UC3 CRUD Operation
insert into employee_payroll(name,startDate,salary)
values('naveen',GETDate(),20000)

insert into employee_payroll(name,startDate,salary)
values('dinesh',GETDate(),35000)

insert into employee_payroll(name,startDate,salary)
values('Ravi',GETDate(),45000)

--#UC4
select * from employee_payroll

--#UC5
select salary from employee_payroll
where name='dinesh'

--#UC6
Alter table employee_payroll 
ADD Gender varchar(Max)

update employee_payroll
set Gender='M'
where Id=3

--#UC7
select SUM(salary) as SumOfSalary from employee_payroll

select AVG(salary) as AVGOfSalary from employee_payroll

select MIN(salary) as MinSalary from employee_payroll

select MAX(salary) as MaxSalary from employee_payroll

select count(Id) from employee_payroll where Gender='M'

select count(Id),Gender from employee_payroll GROUP BY Gender

--#UC8
Alter table employee_payroll
ADD phoneNumber varchar(Max)

update employee_payroll
set phoneNumber='8309294800'
where Id=3


Alter table employee_payroll
ADD Address varchar(Max)

update employee_payroll
set Address='electronic City'
where Id=3

Alter table employee_payroll
ADD Department varchar(Max)

--#UC9
Alter table employee_payroll
ADD BasicPay int

update employee_payroll
set BasicPay=20000
where Id=3

Alter table employee_payroll
ADD Deductions int

update employee_payroll
set Deductions=48562
where Id=3

Alter table employee_payroll
ADD TaxablePay int

update employee_payroll
set TaxablePay=4523
where Id=3

Alter table employee_payroll
ADD IncomeTax int

update employee_payroll
set IncomeTax=5500
where Id=3

Alter table employee_payroll
ADD NetPay int

update employee_payroll
set NetPay=8500
where Id=3

--#UC10
update employee_payroll
set Department='sales and Marketing'
where name='Ravi'



select * from employee_payroll
