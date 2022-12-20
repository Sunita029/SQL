## Day 3

use mydb;

select * from salesman;
select * from customer;

## Sum
select salesmanid, sum(grade) from customer group by 1;

## Avg
select salesmanid, Avg(grade) from customer group by 1;

## count
select salesmanid, count(customerid) from customer group by 1;

## Min
select salesmanid, min(first_puchase) from customer group by 1;

## Max
select salesmanid, max(first_puchase) from customer group by 1;


## Group By
select salesmanid, count(first_puchase) from customer group by 1;

## Group By and having
select salesmanid, count(first_puchase) from customer 
group by salesmanid having max(grade) = 100;

## Order By 
select salesmanid from customer order by 1 desc;

## Group by with Order By 
select salesmanid, count(first_puchase) from customer group by 1 order by 2 desc;

## Group By and having and Order By 
select salesmanid, count(first_puchase) from customer 
group by 1 having min(grade) = 100 order by 2 desc;

## alais 
select salesmanid, max(first_puchase) as lastpurchase from
 customer group by 1;

### union 

create table user
(
user_id int,
name varchar(255),
age int,
gender varchar(10)
);


create table Guest
(
Guest_user_id int,
name varchar(255),
age int,
gender varchar(10)
);


show databases;
use MYDB;

show tables;

insert into user
values(1000,'Sunita',25,'F');
insert into user
values(1001,'Ankur',24,'M');
insert into user
values(1002,'Shubham',33,'M');
insert into user
values(1003,'Annu',20,'F');
insert into user
values(1004,'Abhay',35,'M');
insert into user
values(1005,'shweta',32,'F');
insert into user
values(1006,'Yukti',29,'F');
insert into user
values(1007,'Vipul',29,'M');
insert into user
values(1008,'Afzal',30,'M');
insert into user
values(1009,'Shobna',22,'F');


insert into Guest
values(1000,'Sunita',25,'F');
insert into Guest
values(1010,'Rohit',24,'M');
insert into Guest
values(1012,'Shubham',33,'M');
insert into Guest
values(1013,'Anita',20,'F');
insert into Guest
values(1004,'Abhay',35,'M');
insert into Guest
values(1005,'shweta',32,'F');
insert into Guest
values(1006,'Yukti',29,'F');
insert into Guest
values(1017,'Mayank',25,'M');
insert into Guest
values(1008,'Afzal',30,'M');
insert into Guest
values(1019,'Sunit',45,'M');

## Union
select user_id,name from user
union 
select guest_user_id,name from Guest;

## Union all
select user_id,name from user
union all
select guest_user_id,name from Guest;

use MYDB;

## Intersect
select user_id,name from user
Intersect 
select guest_user_id,name from Guest;

## Except
select user_id,name from user
Except 
select guest_user_id,name from Guest;

## Case statements
select user_id ,age,gender,case when age >= 25 and gender = 'F' then 1 else 0 end from user ;

## Case statement with count
select gender , count(case when gender = 'F' then user_id end) female ,
count(case when gender = 'M' then user_id end) male  from user group by 1;

## In one statement
select gender , count(case when gender = 'F' then user_id when gender =  'M' then user_id end)  from user group by 1;

## In one statement with more than one condition
select gender , count(case when age >= 25 and gender = 'F' then user_id when age >= 25 and gender =  'M' then user_id end)  from user group by 1;
