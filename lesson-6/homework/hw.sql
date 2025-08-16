CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');
--1
select distinct col1,col2 from InputTbl
where col1 in ('a','c','m')

--2
SELECT DISTINCT 
       CASE WHEN col1 < col2 THEN col1 ELSE col2 END AS col1,
       CASE WHEN col1 < col2 THEN col2 ELSE col1 END AS col2
FROM InputTbl;

select * from TestMultipleZero
where (A+B+C+D)<>0

select * from TestMultipleZero
where A<>0 or B<>0 or C<>0 or D<>0

select * from section1
where id%2=1

select top (1) * from section1
order by id

select top (1) * from section1
order by id desc

select * from section1
where name like 'b%'

CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

select * from ProductCodes
where Code like '%$_%' escape '$'

