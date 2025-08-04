create table Employees (EmpID int, Name varchar(50), salary decimal(10,2))
select * from Employees
insert into Employees values (1,'Akmal',500)
insert into Employees values (2,'Jasur',600), (3,'Begzod',650)
update Employees set salary = 7000 where EmpID = 1
delete from Employees where EmpID = 2
-- SQL tilining quyidagi kodlari DELETE, TRUNCATE, DROP bir biridan quyidagilarga ko'ra farq qiladi.
-- DELETE - bunda tabledagi aynan biror data, column yoki rowni o'chirib tashlash mumkin. 
-- TRUNCATE - bunda tabledagi barcha datalarni o'chirib tashlash uchun ishlatiladi. Tabledagi barcha datalar o'chiriladi biroq table saqlanib qolinadi.
-- DROP - bunda table yoki database to'liq o'chirib yuborilishi uchun ishlatiladi.
alter table Employees alter column Name varchar (100);
Alter table Employees add Department varchar (100);
alter table Employees alter column salary FLOAT;
create table Departments (DepartmentID int, DepartmentName varchar (50))
select * from Departments;
truncate table Employees;
insert into Employees values (1,'Akmal',5500,'Monitoring'),(2,'Jasur',550,'Risk'),(3,'Axmad',5600,'Kredit'),(4,'Rustam',5650,'Devonxona'),(5,'Nigora',1000,'Devonxona');
Insert into Departments values (1,'Monitoring'),(2,'Risk'),(3,'Kredit'),(4,'Komplayns'),(5,'Audit');
update Employees set Department = 'Managment' where salary > 5000
truncate table Employees;
alter table Employees Drop column Department;
exec sp_rename 'Employees', 'StaffMembers'
select * from StaffMembers;
drop table Departments;
create table Products (ProductID int primary key(ProductID),ProductName varchar(50),category varchar(50),Price decimal,expirydate int);
alter table Products add constraint chk_Price_Plus CHECK (Price>0);
alter table Products add Stockquantity int default (50);
select * from Products;
exec sp_rename 'Products.category','ProductCategory','column';
insert into Products values (15,'Iphone','smartphone',800,5,10),(16,'Qozon','Jihoz',700,3,15),(17,'Televizor','TV',200,10,5),(18,'Cobalt','Avto',10000,20,0),(19,'Kompyuter','texnika',1000,8,20);
Select * into Products_Backup from Products;
exec sp_rename	'Products', 'Inventory';
alter table Inventory drop constraint chk_Price_Plus;
alter table Inventory alter column Price float;
select * from Inventory;
alter table Inventory add ProductCode int identity (1000,5);
