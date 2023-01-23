
### NOTE: PLEASE REFER TO PREVIOUS SESSIONS SQL FILE FOR CREATING USER AND GUEST TABLE .

## Self Join
select T1.user_id , T1.name, T2.user_id, T2.name from user T1, user T2;

## Inner join
select * from user u
inner join Guest G on G.Guest_user_id = u.user_id;

## Left join
select * from user u
left join Guest G on G.Guest_user_id = u.user_id;

## Right join
select * from user u
right join Guest G on G.Guest_user_id = u.user_id;

## cross join
select * from user u  cross join Guest G;

## joins with group by and having clause
select user_id, u.name,  min(u.age)  from user u
left join Guest G on G.Guest_user_id = u.user_id 
Group by user_id, u.name
having min(G.age) <= 30;
