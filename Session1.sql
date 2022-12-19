show databases;

## create database
Create database MYDB;

## show tables
use MYDB;  ## activate Created database to runn queries 
show tables;

# drop or delete database
drop database MYDB;

## create table
use MYDB;
CREATE TABLE salesman 
( salesmanid int Unique Key, 
name varchar(255), 
city varchar(255), 
commision int );

## checking table
select * from salesman;

## Alter table 
ALTER TABLE salesman
ADD state varchar(255);

## checking table
select * from salesman;


## drop table again
drop table salesman;

## create table
use MYDB;
CREATE TABLE salesman 
( salesmanid int Unique Key, 
name varchar(255), 
city varchar(255), 
commision int );

## insert data into table

INSERT INTO salesman (salesmanid,name,city,commision) 
VALUES (5001,"James Hoog", "New York", 15);
## OR
INSERT INTO salesman 
VALUES (5002,"Nail Knite", "Paris", 13);

## check table data 
select * from salesman;

## update table 
UPDATE salesman 
SET  commision = 16
WHERE salesmanid = 5002;

## check table data 
select * from salesman;

## if server doesn't allow update or delete
SET SQL_SAFE_UPDATES = 0;

## delete and truncate
delete from salesman where salesmanid = 5002;  ## delete only specific rows ; slow

select * from salesman ;

truncate table  salesman;  ## delete entire rows ; fast


select * from salesman ;


## 
drop table salesman ;

show tables ;

## auto increment
CREATE TABLE salesman 
( 
id int not null auto_increment, 
salesmanid int, 
name varchar(255), 
city varchar(255), 
commision int ,
Primary Key (id)
);


INSERT INTO salesman (salesmanid,name,city,commision) 
VALUES (5001,"James Hoog", "New York", 15);
## OR
INSERT INTO salesman (salesmanid,name,city,commision) 
VALUES (5002,"Nail Knite", "Paris", 13);


## 
select * from salesman;


## Identity
CREATE TABLE salesman 
( 
id int Identity(5,2) primary Key,  
salesmanid int, 
name varchar(255), 
city varchar(255), 
commision int 
);

## Identity(1,1)  --- first one is the start point, second 1 is the step size

## Not null contraint

## Unique 

## Primary key

## foreign key 

drop table salesman;
drop table customer;

show tables;

CREATE TABLE salesman (
salesmanid int primary key, 
name varchar(255), 
city varchar(255), 
commision int
);

CREATE TABLE customer (
customerid int primary Key, 
custname varchar(255),
city varchar(255),grade int,first_puchase date,
salesmanid int,
FOREIGN KEY (salesmanid) REFERENCES salesman(salesmanid)
);

show tables;


INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5001,"James Hoog", "New York", 15);
INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5002,"Nail Knite", "Paris", 13);
INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5005,"Pit Alex", "London", 11);
INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5006,"Mc Lyon", "Paris", 14);
INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5007,"Paul Adam", "Rome", 13);
INSERT INTO salesman
(salesmanid,name,city,commision) VALUES (5003,"Lauson Hen", "San Jose", 12);


INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3002,"Nick Rimando", "New York", 100,'2020-12-17', 5001);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3007, "BradDavis", "New York", 200,'2020-11-10', 5001);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3005,"Graham Zusi", "California", 200,'2020-10-19', 5002);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3008,"Julian Green", "London", 300,'2020-02-21', 5002);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3004,"Fabian Johnson", "Paris", 300,'2020-06-07', 5006);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3009,"Geoff Cameron", "Berlin", 100,'2020-12-30', 5003);
INSERT INTO customer
(customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3003, "JozyAltidor", "Moscow", 200,'2020-09-01', 5007);
INSERT INTO customer (customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3001, "BRAD Guzan", "London", 100,'2020-11-29', 5005);
INSERT INTO customer (customerid,custname,city,grade,first_puchase,salesmanid) VALUES (3006, "brad Guzan", "London", 100,'2020-06-20', 5005);


select * from salesman;
select * from customer;
