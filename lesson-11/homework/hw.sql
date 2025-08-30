--1

select o.OrderID, c.FirstName + ' ' + c.LastName as Name, o.OrderDate  from Orders o
left join Customers c on o.CustomerID = c.CustomerID
where o.OrderDate>'2023-01-01'

--2

select e.Name, d.DepartmentName from Employees e
left join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName = 'Sales' or d.DepartmentName= 'Marketing'

--3
select * from Employees
select * from Departments

select DepartmentName, max(e.Salary) eng_katta from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
group by d.DepartmentName
order by eng_katta desc

--4

select * from Customers c
right join Orders o
on c.CustomerID=o.CustomerID
where o.OrderDate between '2023-01-01' and '2023-12-31'
and c.Country='USA'

--5

 select c.FirstName, count(TotalAmount) as TotalOrders from Orders o
 join Customers c 
 on o.CustomerID=o.CustomerID
 group by c.FirstName

 --6

select * from Products p
join Suppliers s
on p.SupplierID=s.SupplierID
where s.SupplierName='Gadget Supplies' or s.SupplierName='Clothing Mart' 
order by s.SupplierName

--7

select c.CustomerID, firstName, max(OrderDate) as eng_oxirgi_buyurtma from Customers c
left join Orders o
on c.CustomerID=o.CustomerID
group by FirstName, c.CustomerID

--8

select c.FirstName, o.TotalAmount from Orders o
join Customers c
on o.CustomerID=c.CustomerID
where TotalAmount>500

--9

select p.ProductName, s.SaleDate, s.SaleAmount from Products p
left join Sales s
on p.ProductID=s.ProductID
where SaleDate between '2022-01-01' and '2022-12-31'
or SaleAmount>400

--10

select p.ProductName, max(s.SaleAmount) Eng_katta_sotuv from Sales s
join Products p
on s.ProductID=p.ProductID
group by ProductName

--11

select * from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where DepartmentName='Human Resources' and Salary>60000

--12

select p.ProductName, SaleDate, StockQuantity  from Products p
join Sales s
on p.ProductID=s.ProductID
where SaleDate between '2023-01-01' and '2023-12-31'
and StockQuantity>100

--13

select e.Name, d.DepartmentName, e.HireDate from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where DepartmentName='Sales' or HireDate > '2020-01-01'
 
--14

select * from Customers c
 join Orders o
 on c.CustomerID=o.CustomerID
 where Country='USA' and Address like '____ %'

 --15

select p.ProductName, p.Category, s.SaleAmount from Products p
join Sales s
on p.ProductID=s.ProductID
where p.Category=1 or s.SaleAmount>350

--16

select c.CategoryName, count(ProductName) as Product_soni from Products p
join Categories c
on p.Category=c.CategoryID
group by CategoryName

--17

select c.FirstName, c.City, o.OrderID, o.TotalAmount from Customers c
join Orders o
on c.CustomerID=o.CustomerID
where city='Los Angeles' and o.TotalAmount>300

--18

select * from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where DepartmentName='Human Resources' or DepartmentName='Finance'  OR (
        (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'a', '')))
      + (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'e', '')))
      + (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'i', '')))
      + (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'o', '')))
      + (LEN(e.Name) - LEN(REPLACE(LOWER(e.Name), 'u', '')))
      ) >= 4;


--19
select * from Employees
select * from Departments

select e.Name, d.DepartmentName, Salary from Employees e
join Departments d
on e.DepartmentID=d.DepartmentID
where DepartmentName='Sales' or DepartmentName='Marketing' and Salary>60000







