use world;


-- 2 table => data extract (join)
-- city => id (PK) ,contrycode 
select * from city;
select * from country;
-- id ,population
-- id can by pk 

-- country => code   => PK ,code 
describe city;

select * from country;
    select *from city;
    

select count(id), count(distinct id) ,count(population),
count(distinct population) from city;

select name ,countrycode from city;

select ct.name ,ct.countrycode from city as ct;
select cnty.code , cnty.name  from country as cnty;

select ct.name ,ct.countrycode from city as ct
join country as cnty
where ct.countrycode=cnty.code;


select ct.name ,ct.countrycode, cnty.code from city as ct
join country as cnty
where ct.countrycode=cnty.code;

-- find out the city and thrir respective country name 
select ct.name ,ct.countrycode, cnty.code, name  from city as ct
join country as cnty
where ct.countrycode=cnty.code;


select cnty.code ,cnty.name from country as cnty;


-- you nid to find city name  and the population of  city  along with the   govt.form in the city  with the pop(name) from hige to lowyrst 


select ct.name ,ct.population,cnty.GovernmentForm from city as ct
join country as cnty
where ct.countrycode=cnty.code order by ct.population;

select * from countrylanguage;
select * from country;



