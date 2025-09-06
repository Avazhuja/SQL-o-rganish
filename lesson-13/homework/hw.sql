select TOP 1 CONCAT (EMPLOYEE_ID,'-', FIRST_NAME, ' ', LAST_NAME) AS [ID-Name] FROM Employees

--2

select REPLACE(PHONE_NUMBER, 124, 999) FROM Employees

--3

select FIRST_NAME, len(FIRST_NAME) as Number_of_letters from Employees
where left (FIRST_NAME, 1) = 'A'
or left (FIRST_NAME, 1) = 'J'
or left (FIRST_NAME, 1) =  'M'
ORDER BY FIRST_NAME

SELECT 
    FIRST_NAME AS "First Name",
    LEN(FIRST_NAME) AS "Name Length"
FROM Employees
WHERE SUBSTRING(FIRST_NAME, 1, 1) IN ('A', 'J', 'M')
ORDER BY FIRST_NAME;

--4

SELECT MANAGER_ID, sum(SALARY) AS TOTAL_SALARY FROM Employees
group by MANAGER_ID

--5

select Year1, GREATEST (max1, max2, max3) as Highestvalue
from TestMax

--6

select * from cinema
where id%2=1
and description<>'boring'

--7
select * from SingleOrder
order by 
case
when Id=0 then 9999 else id
end

select * from SingleOrder
order by Id desc

--8
select coalesce(ssn, passportid, itin) as Not_Null from person

--9

SELECT 
    PARSENAME(REPLACE(FullName, ' ', '.'), 3) AS FirstName,
    PARSENAME(REPLACE(FullName, ' ', '.'), 2) AS MiddleName,
    PARSENAME(REPLACE(FullName, ' ', '.'), 1) AS LastName
FROM Students;

--10
select * from Orders

select * from Orders o	
where CustomerID in
(select distinct CustomerID  from Orders
where DeliveryState ='CA')
and o.DeliveryState  = 'TX'

--11

select STRING_AGG(String, ' ') from DMLTable

--12

select * from Employees

select *
FROM Employees
WHERE (
LEN(concat(FIRST_NAME, LAST_NAME))
- LEN(REPLACE (concat(FIRST_NAME, LAST_NAME), 'a', ''))
)>=3

--13

select * from Employees

select DEPARTMENT_ID, COUNT(JOB_ID) as Number_emp_dep,
count(datediff(YEAR, HIRE_DATE, '1990-01-01')) AS Worksyear,
count(datediff(YEAR, HIRE_DATE, '1990-01-01'))/COUNT(DEPARTMENT_ID)*100 as Persentage
FROM Employees
GROUP BY DEPARTMENT_ID


select DEPARTMENT_ID, COUNT(DEPARTMENT_ID) as Number_emp_dep,
count(datediff(YEAR, HIRE_DATE, '1990-01-01')) AS Worksyear,
count(datediff(YEAR, HIRE_DATE, '1990-01-01'))/COUNT(DEPARTMENT_ID)*100 as foizda FROM Employees
GROUP BY DEPARTMENT_ID


SELECT 
    DEPARTMENT_ID,
    COUNT(*) AS TotalEmployees,
    100.0 * SUM(CASE 
                   WHEN HIRE_DATE <= DATEADD(YEAR, -3, getdate()) 
                   THEN 1 ELSE 0 END
               ) / COUNT(*) AS PercentageOver3Years
FROM Employees
GROUP BY DEPARTMENT_ID;

--14

select p1.SpacemanID, p1.JobDescription, p1.MissionCount
from Personal p1
join (
select JobDescription,
	max(MissionCount) as MaxMission,
	MIn(MissionCount) as MinMission 
	from Personal
	group by JobDescription 
	) p2 
 on p1.JobDescription=p2.JobDescription
 and (p1.MissionCount=p2.MaxMission or p1.MissionCount=p2.MinMission)

 --15
 
  
 SELECT 
    StudentID,
    Grade,
    SUM(Grade) OVER (ORDER BY StudentID) AS RunningTotal
FROM Students;

--16

select s1.StudentName as Name1, s1.Birthday, s2.StudentName as Name2, s2.Birthday from Student s1
left join Student s2 
on s1.Birthday=s2.Birthday
where s1.StudentName<>s2.StudentName
and s1.StudentName>s2.StudentName
