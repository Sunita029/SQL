show tables;

select * from Employee;
select * from customer;
select * from salesman;

insert into salesman
values(5008,'Shikha rawat','India',12)


Create View Salesman_info
As
select s.salesmanid,s.city, count(customerid) no_of_sales from salesman s 
left join customer c on c.salesmanid = s.salesmanid
group by 1;

select * from Salesman_info;


DELIMITER $$
CREATE FUNCTION Calculate_Age
(
 DOB date
)
RETURNS INT DETERMINISTIC
BEGIN
    RETURN YEAR(CURRENT_DATE()) - YEAR(DOB);
END$$
DELIMITER ;

SELECT Calculate_Age('1988-02-29') as DOB;



DELIMITER $$
CREATE PROCEDURE Proc_Saleman_Info_Data()
BEGIN
	## Type 1
    select s.salesmanid,s.city, count(customerid) no_of_sales from salesman s 
	left join customer c on c.salesmanid = s.salesmanid
	group by 1;
    
    ## Type 2
    insert into salesman
	values(5008,'Shikha rawat','India',12);
    
END$$
DELIMITER ;

call Proc_Saleman_Info_Data();

