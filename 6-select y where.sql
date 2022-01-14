#select

use world;

show tables;

select * from city;

select distinct(CountryCode) as "Codigo de pais" from countrylanguage; 

#-------------------------------------------------------------------

#Where

select * from city where District = 'Kabol';

#Distinto, o !=
select * from city where District <> 'Kabol';

select * from city where Population = 237500;

#este me acepta valores nulos, osea vacios
select * from city where Population <=> 237500;

#---------------------------------------------------------------------








