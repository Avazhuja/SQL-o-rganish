--1

select e.Name as Empname, e.Salary, d.DepartmentName from Employees e
join Departments d on e.DepartmentID = d.DepartmentID
where e.Salary>50000

---2

select c.FirstName, c.LastName ,  o.OrderDate from Customers c
join Orders o on c.CustomerID = o.CustomerID
where o.OrderDate between '2023-01-01' and '2023-12-31'

--3


select e.Name as EmpName, d.DepartmentName from Employees e
left join Departments d on e.DepartmentID = d.DepartmentID
where d.DepartmentName is NULL

--4

select s.SupplierName, p.ProductName from Products p 
right join Suppliers s on p.SupplierID = s.SupplierID
where p.ProductName is null

--5

select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount from Orders o 
full outer join Payments p on o.OrderID = p.OrderID
and o.OrderID is null
and p.PaymentID is null

--6

select e1.Name as Empname, e2.Name as Manager from Employees e1
left join Employees e2 on e1.ManagerID=e2.EmployeeID

--7

select s.Name, c.CourseName from Students s
join Enrollments e on s.StudentID = e.EnrollmentID
join Courses c on e.CourseID = c.CourseID
where c.CourseName = 'Math 101'

--8

select c.FirstName, c.LastName, o.Quantity from Customers c
full outer join Orders o on c.CustomerID = o.CustomerID
where o.Quantity>2

--9

select * from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
where d.DepartmentName='Human Resources'

--10

select d.DepartmentName, count(d.DepartmentName) as soni from Employees e
left join Departments d on e.DepartmentID=d.DepartmentID
group by d.DepartmentName
having count(d.DepartmentName)>5
	
--11

select p.ProductID, p.ProductName from Products p
left join Sales s on p.ProductID=s.ProductID
where s.SaleAmount is null

--12

select c.FirstName, c.LastName, o.Quantity, o.OrderDate from Customers c
cross apply (select top 1 orderID, orderdate, Quantity from Orders o
where c.CustomerID=o.CustomerID
order by o.OrderDate desc) o;

--13

select e.Name, d.DepartmentName from Employees e
full outer join Departments d on e.DepartmentID=d.DepartmentID
where e.Name is not null and d.DepartmentName is not null

--14


select e1.Name as Employee1, e2.Name as Employee2, e1.ManagerID from Employees e1
join Employees e2 on e1.ManagerID=e2.ManagerID
and e1.EmployeeID<e2.EmployeeID

--15

select o.OrderID, o.OrderDate, c.FirstName, c.LastName from Orders o
join Customers c on c.CustomerID = o.CustomerID
where o.OrderDate between '2022-01-01' and '2022-12-31'

--16

select e.Name, e.Salary, d.DepartmentName from Employees e
join Departments d on e.DepartmentID=d.DepartmentID
and d.DepartmentName='Sales' 
and e.Salary>60000

--17

select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount from Orders o 
join Payments p 
on o.OrderID=p.OrderID


--18

select p.ProductID, p.ProductName, o.OrderID from Products p
left join Orders o on p.ProductID=o.ProductID
where o.OrderID is null

--19
select e1.Name, e1.Salary from Employees e1
join (select departmentID, avg(salary) as Urtacha from Employees
group by DepartmentID) d
on e1.Salary>d.Urtacha

--20

select o.OrderID, o.OrderDate from Orders o
left join Payments p
on o.OrderID=p.OrderID
where o.OrderDate < '2020-01-01'
and PaymentID is null

--21



select p.ProductID, p.ProductName from Products p
left join Categories c 
on p.Category=c.CategoryID
where c.CategoryID is null

--22


select e1.Name as Employee1, e2.Name as Employee2, e1.ManagerID, e1.Salary, e2.Salary from Employees e1
join Employees e2 on e1.ManagerID=e2.ManagerID
and e1.EmployeeID<e2.EmployeeID
and e1.Salary>60000
and e2.Salary>60000


--23

select e.Name, d.DepartmentName from Employees e
left join Departments d 
on e.DepartmentID=d.DepartmentID
where d.DepartmentName like 'M%'


--24


select s.SaleID, p.ProductName,s.SaleAmount from Products p
left join Sales s
on p.ProductID=s.ProductID
where s.SaleAmount>500

--25

select s.StudentID, s.Name from Students s
join Enrollments e on s.StudentID=e.StudentID
join Courses c on e.CourseID = c.CourseID
where c.CourseName <> 'Math 101'

--26

select o.OrderID, o.OrderDate, p.PaymentDate, p.Amount from Orders o 
left join Payments p 
on o.OrderID=p.OrderID
where p.OrderID is null

--27

select * from Products p
left join Categories c 
on p.Category=c.CategoryID
where c.CategoryName = 'Electronics' or c.CategoryName = 'Furniture'
