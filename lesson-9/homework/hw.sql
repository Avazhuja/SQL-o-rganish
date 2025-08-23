--1
select s.SupplierName, p.ProductName from Suppliers s
cross join Products p 

--2

select d.DepartmentName, e.Name from Departments d
cross join Employees e

--3

select s.SupplierName, p.ProductName from Products p
join Suppliers s on s.SupplierID = p.SupplierID

--4

select c.Firstname, c.Lastname, o.OrderID from Customers c
join Orders o on c.CustomerID = o.CustomerID

--5

select s.Name, c.CourseName from Students s
cross join Courses c

--6

select p.ProductName, o.OrderID from Products p
join Orders o on p.ProductID = o.ProductID

--7

select e.Name, d.DepartmentName  from Employees e
join Departments d on d.DepartmentID = e.DepartmentID

--8

select s.Name, e.CourseID  from Students s
join Enrollments e on s.StudentID = e.StudentID

--9


select * from Payments p
join Orders o on o.OrderID=p.OrderID

--10

select * from Orders o
join Products p on p.Price>100

--11

select e.Name, d.DepartmentName from Employees e
join Departments d on e.DepartmentID <> d.DepartmentID

--12

select * from Orders o
join Products p on o.Quantity>p.StockQuantity

--13

select c.FirstName + ' ' + c.LastName as Name, s.ProductID from Customers c
join Sales s on s.SaleAmount>=500

--14

select s.Name, c.CourseName from Enrollments e
join Courses c on e.CourseID = c.CourseID
join Students s on e.StudentID = s.StudentID

--15

select p.ProductName, s.SupplierName from Products p 
join Suppliers s on SupplierName like '%tech%'

--16

select * from Orders o
join Payments p on p.Amount<o.TotalAmount

--17


select * from Employees e
join Departments d on d.DepartmentID = e.DepartmentID

--18

select * from Products p 
join Categories c on c.CategoryID = p.Category
where c.CategoryName in ('Electronics', 'Furniture')

--19

select * from Customers c
join Sales s on c.CustomerID = s.CustomerID
where c.Country = 'USA'

--20

select * from Customers c
join Orders o on c.CustomerID=o.CustomerID
where c.Country = 'Germany' and o.TotalAmount>100

--21
select * from Employees

SELECT 
    e1.Name AS Employee1,
    e2.Name AS Employee2
FROM Employees e1
JOIN Employees e2
    ON e1.DepartmentID <> e2.DepartmentID
   AND e1.EmployeeID < e2.EmployeeID;

--22

select * from Payments p1
join Orders o on p1.OrderID = o.OrderID
join Products p2 on o.ProductID = p2.ProductID
where p1.Amount > o.Quantity * p2.Price

--23

select s.Name as StudentName, e.StudentID from Students s
left join Enrollments e on s.StudentID = e.StudentID
where e.StudentID is NULL

--24

select * from Employees

select e1.Name as Employee, e1.Salary as empsalary, e2.Name as Manager, e2.Salary as ManagerSalary from Employees e1
join Employees e2 on e1.EmployeeID<>e2.EmployeeID and e2.Salary<=e1.Salary 

--25

select * from Orders o
left join Customers c on o.CustomerID = c.CustomerID
left join Payments p on o.OrderID = p.OrderID
where p.PaymentID is null
