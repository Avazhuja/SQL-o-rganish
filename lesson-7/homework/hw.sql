
--1

select min(price) as Eng_past from Products
--2

select max(Salary) as Eng_yuqori from Employees
--3

select count(*) as soni from Customers
--4

select count(distinct Category) as soni from Products
--5

select max(SaleAmount) eng_yuqori
from Sales
where ProductID=7 
--6

select avg(age) from Employees
--7

select DepartmentName, count(departmentName) as Soni
from Employees
group by DepartmentName
--8

select Category, min(price) as eng_past_narx,
max(price) as Eng_yuqori_narx
from Products
group by Category
--9

select CustomerID, sum(saleAmount) as Jami_xarid from Sales
group by CustomerID
order by CustomerID desc
--10


select DepartmentName, count(DepartmentName) as Soni
from Employees
group by DepartmentName
HAVING count(DepartmentName)>4
--11

select ProductID, sum(SaleAmount) as Umumiy_sotuv, avg(SaleAmount) as Urtacha_narx
from Sales
Group by ProductID
--12


select DepartmentName, Count(DepartmentName) as Soni from Employees
where DepartmentName='HR'
group by DepartmentName
--13

select DepartmentName, min(salary) as eng_kam_maosh, Max(salary) as eng_kup_maosh
from Employees
group by DepartmentName
--14

select departmentName, avg(salary) as Urtacha_maosh
from Employees
group by DepartmentName
--15

select DepartmentName,
count(EmployeeID) as Soni,
avg(Salary) as Urtacha_maosh
from Employees
Group by DepartmentName
--16



select Category, avg(Price) as Urtacha_narx
from Products
group by Category
Having avg(price)>400
--17

select sum(SaleAmount) as Jami_sotuv from Sales
--18

select CustomerID,
count(saleID) as Soni 
from Sales
group by (CustomerID)
HAVING count(saleID)>=3
--19


select DepartmentName, avg(Salary) as Maosh
from Employees
Group by DepartmentName
HAVING avg(Salary)>60000
--20

select Category, avg(price) as Urtacha 
from Products
group by Category
HAVING avg(price)>150
--21

select CustomerID,
sum(SaleAmount) as Jami_xarid 
from Sales
Group by CustomerID
HAVING sum(SaleAmount)>1500
--22

select DepartmentName, sum(Salary) as Jami_maosh, avg(Salary) as urtacha_maosh
from Employees
Group by DepartmentName
HAVING avg(Salary)>65000
--23

select CustomerID, sum(TotalAmount) as Jami
From Orders
Group by CustomerID
HAVING sum(TotalAmount)>50
order by Jami desc
--24

select 
year(Orderdate) as OrderYear,
MONTH(OrderDate) as Ordermonth,
sum(TotalAmount) as Jami_sotuv,
Count(distinct ProductID) as UniqueProduct
from Orders
group by year(OrderDate),
MONTH(OrderDate)
HAVING Count(distinct ProductID)>=2
--25

select 
year(Orderdate) as OrderYear,
min(Quantity) as eng_kam,
max(Quantity) as eng_kup
from Orders
group by year(OrderDate)
