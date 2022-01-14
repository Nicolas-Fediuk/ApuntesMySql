#concat

use world;

select * from country;

#para concatenar varias celdas en una sola
select concat(Code, " - ", Name, " - ", Continent) as "concatenar" from country;

#para concatenar varias celdas en una sola, pone el guion automaticamente
select concat_ws(" - ", Code, Name, Continent ) as "concatenar" from country;

#----------------------------------------------------------------------
#min, max , count , sun , avg
select * from country;

#minimo
select Code, min(IndepYear) from country where Code in ("AFG","AGO");

#maximo
select Code, max(IndepYear) from country where Code in ("AFG","AGO");

#cuenta los registros
select count(IndepYear) from country where Code in ("AFG","AGO");

#suma
select sum(IndepYear) from country where Code in ("AFG","AGO");

#promedio
select avg(IndepYear) from country where Code in ("AFG","AGO");





