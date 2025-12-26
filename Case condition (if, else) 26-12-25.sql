/*
Case condition (if, else) 26-12-25
  if(conditio,True ,False)
  if (codnotopn, True, if(condotion ,True ,False)

case population
    when population then 'very  small population'
    where population=8000 then 'population is 8000'
*/
select name, population from world.country;

select name ,population,
case 
when population=0 then 'No population'
when population=8000 then 'Small population'
end from world.country;


select name ,population,
case 
when population>100000 then 'Large population'
when population>=50000 then 'Medium population'
when population>=8000 then 'Small population'
else 'V.Small'
end from world.country;


select name ,population,
case 
when population>100000 then 'Large population'
when population>=50000 then 'Medium population'
when population>=8000 then 'Small population'
else 'V.Small'
end as 'status' from world.country;


select count(*),
case 
when population>100000 then 'Large population'
when population>=50000 then 'Medium population'
when population>=8000 then 'Small population'
else 'V.Small'
end as'status' from world.country
group by status;


select population ,
case 
when population>50000 then 'Large population'
end as'status' from world.country;

select population ,
case 
when population>50000 then  1 else 0
end as'status' from world.country;

select continent, population ,
case 
when population>50000 then 1 else 0
end as'status' from world.country;


select continent ,
sum(case 
when population>50000 then 1 else 0
end) from world.country
group by continent;

select continent ,
count(case 
when population>50000 then 1 else 0
end) from world.country
group by continent;



