--1

select p.firstName, lastName, city, state from Person p
left join Address a
on p.personId=a.personId

--2

select e1.name as Employee from Employee e1
join Employee e2
on e1.managerId=e2.id
where e1.salary>e2.salary

--3
select email from Person 
group by email
having count(email)>1


--4

delete from Person
where id not in (select 
min(id) 
from Person
group by email)


--5


select distinct g.ParentName from girls g
left join boys b
on g.ParentName=b.ParentName
where b.Id is null

--6
use TSQL2012

SELECT 
    custid,
    SUM(CASE WHEN freight > 50 THEN freight ELSE 0 END) AS TotalSalesAbove50,
    MIN(freight) AS Leastfreight
FROM Sales.Orders
GROUP BY custid;

--7

select c1.Item '1-savat', c2.Item '2-savat' from Cart1 c1
full outer join Cart2 c2
on c1.Item=c2.Item


--8

select c.name from Customers c
left join Orders o
on o.customerId=c.id
where o.id is null

--9


select s.student_id, s.student_name, sub.subject_name,
count(e.subject_name) as attended_exams from Students s 
cross join Subjects sub
left join Examinations e
on e.student_id=s.student_id
and sub.subject_name=e.subject_name
group by s.student_id, s.student_name, sub.subject_name
order by s.student_id, s.student_name
