CREATE TABLE Employee (name varchar(10), salary int);

INSERT INTO Employee VALUES ('Rick', 3000); 
INSERT INTO Employee VALUES ('John', 4000); 
INSERT INTO Employee VALUES ('Shane', 3000); 
INSERT INTO Employee VALUES ('Peter', 5000); 
INSERT INTO Employee VALUES ('Jackob', 7000); 
INSERT INTO Employee VALUES ('Sid', 1000);
INSERT INTO Employee VALUES ('Peter', 3000); 
INSERT INTO Employee VALUES ('Jackob', 10000); 
INSERT INTO Employee VALUES ('John', 15000); 
INSERT INTO Employee VALUES ('Jackob', 7000); 
INSERT INTO Employee VALUES ('Jackob', 4000); 


select * from Employee;

## Rank() function
select *, rank() over (order by salary desc) rn from Employee e;

select *, rank() over (Partition by  name order by salary desc) rn from Employee e;




## Dense_Rank() function
select *, dense_rank() over (order by salary desc) rn from Employee e;

select *, dense_rank() over (Partition by  name order by salary desc) rn from Employee e;

## Row_number() function

select *, ROW_NUMBER() over (order by salary desc) rn from Employee e;

select *, ROW_NUMBER() over (Partition by  name order by salary desc) rn from Employee e;


## LAG()
SELECT *,  LAG(Salary) OVER(Partition By name ORDER BY Salary asc) as Next_Salary
FROM Employee;


## LEAD()
SELECT *,  LEAD(Salary) OVER(Partition By name ORDER BY Salary asc) as previous_Salary
FROM Employee;