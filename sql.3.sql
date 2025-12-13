
use world;
show tables;

select * from city ;
select nume, population from coty;
describe city;
select * from city where district ;
select name from city;


select * from city where countrycode= 'AGE';

select * from city where population>600000;  


select * from city where countrycode!= 'ARG';


-- in operator 
-- select * from continent in ('nort america','europe','Asia');

select * from country where continent in ('nort america','europe','Asia');

select name, continent, indepyear from  country where indepyear in (1901, 1060);

select name, continent from  country where indepyear in (1901, 1060);

select name, continent from  country where indepyear between 1901 and 1060;


select name, continent from  country where indepyear not  between 1901 and 1060;


