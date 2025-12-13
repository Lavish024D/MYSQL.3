use world ;
select lifeexpectancy, round (lifeexpectancy) from country;

select 83.62, round(83.67,1);
-- 83.7

select (456.23) , round (6.23, -1);
-- 10

select (456.23) , round (46.23, -1);
-- 50
select (456.23) , round (46.23, -2);
-- 0
select (456.23) , round (76.23, -2);

select (456.23) , round (276.23, -2);
-- 300

select (456.23) , round (5.23, -1);
--      456.23	         10


select 456.67, round(456.67, 1), truncate(456.67,1);
--     456.67      	 456.7             	  456.6

select 456.67, round(456.67, 1), truncate(456.67,1),mod (43,3);

select  power (2,3), ceil(3.0000008), floor(3.99999);
--             8          4	                3


-- date 
-- inbuilt data yh date  and time print krna 
select now(), curdate(), current_timestamp(),current_time();

-- add data 
select now(), adddate(now() ,2), adddate(now() ,interval -3 month);

-- brfor a 2 day
select now() ,subdate(now(),2);
-- befor a 3 year
select now(), subdate(now(), interval 6 year) ;
-- after a 3 year
select now(), adddate(now(), interval 6 year) ;

select now(), extract(week from now() );
-- 2025-12-13 10:18:42	month is December & year is Saturday
select now(), date_format(now(), 'month is %M & year is %W');

-- 2025-12-13 10:18:01	month is 12 & year is 6
select now(), date_format(now(), 'month is %m & year is %w');
select distinct(continent) from country;

select count(continent ), count(distinct(continent) )from country; 
