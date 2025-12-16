use world;
select * from country;

select count(name) from country where continent='asia' and indepyear>1950;

-- get total country which get indepdence after 1950 in each continent
select continent, count(name) from country where indepyear>1950 group by continent;

select continent, count(name) from country where indepyear>1950 group by continent;

-- the orignal tabl not be able 
-- what is the defren between whari and having 
-- 
-- on agrigat colam  
-- having to filter data based on aggregate column like  sum ,count , max
select continent, count(name),sum(population) from country group by continent
having sum(population)>30401150;
select *from country;

-- find out continent name , table continent population  where life    25.0 %

select continent, sum(population) from country where lifeexpectancy> 35.0 group by continent;

-- 
-- you need to find out the total conttries for each govt. from where the contrys show bn >30 
select governmentform,count(name) as totalcountry  from country group by governmentform
 having count(name)>30;
 
 

select governmentform,count(name) ,sum(population)  from country 
where capital>30
group by governmentform
 having sum(population)>30000;
 
select *from country; 
select continent,region, count(name)  from country group by continent,region; 

select continent,region, count(name)  from country group by continent,region; 

 
 
 
 