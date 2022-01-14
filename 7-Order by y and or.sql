#order by

use world;

#ordena alfabeticamente y por numero
select * from country order by Code desc;

#el numero mas bajo con los 3 primeros numeros
select * from country order by SurfaceArea asc limit 3;

#el 0 va en 1 en 1 para paginar los registros, en resumen trae el SurfaceArea de menor a mayor 
#paginando a 2 registros
select * from country order by SurfaceArea asc limit 0,2;

#------------------------------------------------------------------------
#and y or

select * from country ;

select * from country where Continent = 'Europe' and Region = 'Southern Europe' and SurfaceArea > 468;

select * from country where Code = 'ABW' or Code = 'AFG';