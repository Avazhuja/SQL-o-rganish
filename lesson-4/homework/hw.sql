select * from Employees
select top (5) * from Employees
select * from Products
select distinct Category from Products
select * from Products
where price>100;

select * from Customers
where	FirstName like 'A%' ;
select * from Customers
where City like 'm%'

select * from Products
order by Price;

select * from Employees
where Salary>=60000 and DepartmentName='HR';

select * from Employees
where Salary>=60000 and DepartmentName='marketing' and FirstName like 'd%' and LastName like 'm%';

SELECt EmployeeID
      ,ISNULL(Firstname,'Avaz') as FirstName
      ,LastName
      ,DepartmentName
      ,Salary
      ,HireDate
      ,Age
      , isnull(Email, 'noemail@example.com') as Email
      ,(Country)
 FROM Employees;


 select * from Products
 where Price between 50 and 100

 select distinct category, ProductName from Products
 order by ProductName desc

 select top (10) * from Products
 order by price desc

select	EmployeeID, coalesce	(FirstName,LastName) as 'birinchi_malumot' from Employees;

select distinct Category, Price from Products;

select * from Employees
where age between 30 and 40 or DepartmentName = 'Marketing'

select * from Employees
order by salary desc 
offset 10 rows fetch next 10 rows only

c
order by Age 
offset 20 rows fetch next 10 rows only

select * from Products
where ProductName like ('%e%');

select * from Employees 
where DepartmentName in ('HR','IT','Finance');


select * from Employees
where age in ('30','44');

select * from Customers
order by city 

select * from Customers
order by PostalCode desc


select top (5) SaleAmount from Sales
order by SaleAmount desc;

select firstName + ' ' + LastName as FullName from Employees

select distinct Category, ProductName, Price
from Products where price = '50';

select avg(price) as averageprice from Products
--yuqoridagi kod orqali o'rtacha qiymat topiladi.
select * from Products
where price<(select avg(price)*0.1 from products);


select * from Employees
where age<30 and DepartmentName in ('HR', 'IT');

select * from Employees
where salary>50000 and DepartmentName in ('finance', 'Marketing') and age>25;

select * from Customers
where Email like ('%@gmail.com');

select * from Customers
where Email like ('%@yahoo.com');

select * from Employees
where Salary>all (select salary from Employees where DepartmentName = 'HR')
--bu kod orqali barcha HR hodimlarining oyliklaridan katta oylik maosh oluvchi boshqa kasb egalari haqida filtr qilish mumkin;

select * from Orders
where OrderDate between dateadd(day,-180,getdate()) and getdate()
--Bizga Orders jadvalidagi so‘nggi 180 kun ichida berilgan buyurtmalarni topish kerak;






