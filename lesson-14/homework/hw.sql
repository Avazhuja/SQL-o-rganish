--1
select 
	Name,
	left(Name, CHARINDEX(',', Name)-1) as FirstName,
	substring(Name, CHarindex(',', Name) +1, LEN(Name)) as LastName
	from TestMultipleColumns

	--2
	select * from TestPercent
	where Strs like '%[%]%'

	select * from TestPercent
	where charindex('%', Strs)>0
	
	select * from TestPercent
	where PATINDEX('%[%]%', Strs)>0

	select * from TestPercent
	where len(strs)>len(replace(Strs, '%', ''))

	--3
	
	select
	Vals,
	PARSENAME(Vals, 3) as FirstName,
	PARSENAME(Vals, 2) as Secondlatter,
	PARSENAME(Vals, 1) as Thirdlatter
	from Splitter

	--4
	select 
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE(
	REPLACE('1234ABC123456XYZ1234567890ADS','0','X'), '1', 'X'), '2', 'X'), '3', 'X'), '4', 'X'), '5', 'X'), '6', 'X'), '7', 'X'), '8', 'X'), '9', 'X') as Result


	SELECT TRANSLATE('1234ABC123456XYZ1234567890ADS', 
                 '0123456789', 
                 'XXXXXXXXXX') AS Result;
	--5

	select *,
	len(Vals)-len(replace(Vals, '.', '')) as Soni
	from testDots
	where len(Vals)-len(replace(Vals, '.', ''))>2
	
	select * from testDots
	where Patindex('%.%.%.%', Vals) >0

	select * from testDots
	where CHARINDEX('.', Vals)>0
	and CHARINDEX('.', Vals, CHARINDEX('.', Vals) +1) > 0
	and CHARINDEX('.', Vals, CHARINDEX('.', Vals, Charindex('.', Vals) +1) +1)>0

	--6
	
	select *, len(texts)-len(replace(texts, ' ','')) as NumberSpace from CountSpaces
	
	--7

	select e2.Name as Empname, e1.Name as Manager from Employee e1
	join Employee e2 on e1.Id=e2.ManagerId
	and e1.Salary<e2.Salary

	--8
		
	select EMPLOYEE_ID, FIRST_NAME, laST_NAME, HIRE_DATE,
	datediff(year, HIRE_DATE, getdate()) as [Years of service]
	from Employees
	where 
	datediff(year, HIRE_DATE, getdate()) between '10' and '15'

	--9
	select * from Employees

	select 
	TRANSLATE('rtcfvty34redt', '0123456789', '          ') as Result

	SELECT TRANSLATE('1234ABC123456XYZ1234567890ADS', 
                 '0123456789', 
                 'XXXXXXXXXX') AS Result;

	left('rtcfvty34redt' CHARINDEX('0-9','rtcfvty34redt')-1) as 1-qism,
	SUBSTRING ('rtcfvty34redt', Charindex('0-9', 'rtcfvty34redt')+1) as 2-qism
	
	select 
	replace(
	replace(
	replace(
	replace(
	replace(
	replace(
	replace(
	replace(
	replace(
	replace('rtcfvty34redt', '0', ''), '1', ''), '2', ''), '3', ''), '4', ''), '5', ''), '6', ''), '7', ''), '8', ''), '9', '')
	as Result

	--10

	select * from weather w1
	join weather w2
	on dateadd(day, -1,w1.RecordDate)=w2.RecordDate
	where w1.Temperature>w2.Temperature
	   	 	
	--11
		
	select distinct player_id, min(event_date) as the_first_login from Activity
	group by player_id

	--12

	select substring(fruit_list, CHARINDEX('orange', fruit_list),
	6) as thirditem from fruits    	 

	--13

	SELECT SUBSTRING('sdgfhsdgfhs@121313131', n, 1) AS Character
INTO CharactersTable
FROM (
    SELECT TOP (LEN('sdgfhsdgfhs@121313131'))
           ROW_NUMBER() OVER (ORDER BY (SELECT NULL)) AS n
    FROM sys.objects
) AS Numbers;
 select * from [dbo].[CharactersTable]

 --14

 select p1.id,
 case
 when p1.code=0 then p2.code
 else p1.code
 end as Final_code
 from p1
 join p2 on p1.id=p2.id
 
 
 
 select p1.id, coalesce(nullif(p1.code,0), p2.code) as Final_code
 from p1
 join p2 on p1.id=p2.id
 
 --15
 
 select * from Employees

 select EMPLOYEE_ID, CONCAT_WS(' ', First_name, Last_name) as [Name], HIRE_DATE,
 DATEDIFF(YEAR, HIRE_DATE, '2025-09-14') AS DIF_YEAR,
 CASE
 WHEN DATEDIFF(YEAR, HIRE_DATE, '2025-09-14')<=1 THEN 'New Hire'
 when DATEDIFF(YEAR, HIRE_DATE, '2025-09-14') between 1 and 5 THEN 'Junior'
 when DATEDIFF(YEAR, HIRE_DATE, '2025-09-14') between 5 and 10 THEN 'Mid-level'
 when DATEDIFF(YEAR, HIRE_DATE, '2025-09-14') between 10 and 15 THEN 'Senior'
 else 'Veteran'
 end as Level_empl
 from Employees

 --16

 select * from GetIntegers
 where PATINDEX('%[0-9]%', VALS)=1

 --17
 select * from MultipleVals

 SELECT 
    Vals,
       SUBSTRING(
        Vals,
        CHARINDEX(',', Vals) + 1,
        CHARINDEX(',', Vals, CHARINDEX(',', Vals) + 1) - CHARINDEX(',', Vals) - 1
    )
    + ',' +
    LEFT(Vals, CHARINDEX(',', Vals) - 1)
    +
    SUBSTRING(
        Vals,
        CHARINDEX(',', Vals, CHARINDEX(',', Vals) + 1),
        LEN(Vals)
    ) AS SwappedVals
FROM MultipleVals;

--17

SELECT a.player_id, a.device_id
FROM Activity a
JOIN (
    SELECT player_id, MIN(event_date) AS first_login
    FROM Activity
    GROUP BY player_id
) b
ON a.player_id = b.player_id
AND a.event_date = b.first_login;

--18
select * from WeekPercentagePuzzle

WITH WeekTotal AS (
    SELECT 
        FinancialWeek,
        SUM(SalesLocal + SalesRemote) AS total_sales
    FROM WeekPercentagePuzzle
    GROUP BY FinancialWeek
)
SELECT 
    s.financialWeek,
    s.Area,
    SUM(s.salesLocal + s.salesRemote) AS area_sales,
    (SUM(s.salesLocal + s.salesRemote) * 100.0 / wt.total_sales) AS percentage
FROM WeekPercentagePuzzle s
JOIN WeekTotal wt
    ON s.FinancialWeek = wt.financialWeek
GROUP BY s.FinancialWeek, s.area, wt.total_sales;

