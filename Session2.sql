### Day 2

## select all data
select * from salesman ;
select * from customer ;

select distinct salesmanid from customer;

/* Select with where  
	--- =, <>, !=, >, >=, <, or <=
	--- And, Or, Not
	--- Between 
	--- Like 
	--- In
	--- Any
	--- All
	--- Exists  */
    
select * from customer ;

select * from customer where grade = 100;

select distinct salesmanid from customer where grade = 100;

select custname , city , grade from customer where grade = 100;


select * from customer where grade <> 100;

select * from customer where grade != 100;

select * from customer where grade > 100;

select * from customer where grade >= 200;

select * from customer where grade < 200;

select * from customer where grade <= 200;




### And, Or, Not

select * from customer where salesmanid = 5005 and customerid = 3006;

select * from customer where  customerid = 3010 or salesmanid = 5005;

select * from customer where Not grade = 200;
select * from customer where grade <> 200;


## Between

select * from customer where salesmanid between 5003 and 5006;

select * from customer where salesmanid between 5003 and 5006 and grade = 300;

select * from customer where salesmanid not between 5003 and 5006;

select * from customer where salesmanid > 5003 and salesmanid < 5006;


## Like 

select * from customer where city like '%york%';

## In

select * from customer where salesmanid not in (5003,5001 ,5006);

## Any

select * from salesman;
select * from customer;

select * from customer where salesmanid = Any(select salesmanid from salesman where commision = 13);

## All
select * from salesman where commision = All(select commision from salesman where commision = 13) ;


## Exists
select * from salesman where Exists(select commision from salesman where commision = 13) ;


## Interview questions 

#Ques1 :: Any/All/Exists
#Ques2 :: char vs varchar()
#Ques3 :: delete truncate and drop difference
#Ques4 :: How can you update a column in a single line like M = F and F= M