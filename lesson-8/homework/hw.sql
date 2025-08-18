--1
select category,
count(category) as soni
from Products
group by Category

--2
select Category,
avg(Price) as Urtacha
from Products
group by Category
Having Category='Electronics'

--3
select * from Customers
where City like 'L%'

--4
select ProductName from Products
where ProductName like '%er'

--5
select * from Customers
where Country like '%A'

--6
select TOP (1) price, *
from Products

--7
select * ,
case
when stockQuantity<30 then 'Low Stock'
else 'Sufficient' end as 'Izoh'
from Products

--8
select Country, count(customerID) as soni
from Customers
group by Country
order by soni desc

--9
select min(Quantity) as Eng_kam, max(Quantity) as Eng_kup from Orders

--10
select CustomerID, year(OrderDate) as Yil,
month(OrderDate) as Oy
from Orders
Where year(OrderDate)=2023 and month(OrderDate)=1
except
select CustomerID, year(InvoiceDate) as Yil,
month(InvoiceDate) as Oy
from Invoices
Where year(InvoiceDate)=2023 and month(InvoiceDate)=1
--hulosa topshiriqda so'ralgan ma'lumot jadvalda mavjud emas.


select distinct customerID
from orders
where OrderDate between '2023-01-01' and '2023-01-31'
and OrderID not in (select OrderID From Invoices)

--11
select ProductName from Products
union all
select ProductName from Products_Discounted 

--12
select ProductName from Products
union
select ProductName from Products_Discounted 

--13
select year(OrderDate) as Yil,
avg(orderID) as Urtacha
from Orders
group by year(OrderDate)

--14
select ProductName, 
case
when Price < 100 then 'LOW'
when Price between 100 and 500 then 'MID'
else 'HIGH'
end as 'Status'
from Products

--15


select district_name, [2012],	[2013] Into Yangi_jadval from city_population
pivot(
sum(population) for year in ([2012], [2013])
) as Yangi

select * from Yangi_jadval

--16
select distinct ProductID, sum(SaleAmount) as Summa
from Sales
group by ProductID

--17
select ProductName from Products
where ProductName like '%oo%'

--18
select year, [Bektemir],[Chilonzor],[Yakkasaroy] into new_Population_Each_City from city_population
pivot (
sum(population) for district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
) as oqoltin 
select * from new_Population_Each_City

--19
select top (3) CustomerID, sum(TotalAmount) As Jami_summa from Invoices
group by CustomerID
order by Jami_summa desc

--20
select year, district_name, population
from new_Population_Each_City
unpivot (
population for district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
) as Eski

--21
SELECT p.ProductName, COUNT(s.SaleID) AS TimesSold
FROM Products p
LEFT JOIN Sales s 
    ON p.ProductID = s.ProductID
GROUP BY p.ProductName;

--22
select year, district_name, population
from new_Population_Each_City
unpivot (
population for district_name in ([Bektemir], [Chilonzor], [Yakkasaroy])
) as city_population
