#funciones string

use world;

select * from country;

#elimina los espacion en blanco del lado izquierdo
select ltrim(name) from country;

#ejemplo
select "   esto es un registro   " as name;
select ltrim("   esto es un registro   ") as name;

#rtrim
#elimina los espacion del lado derecho
select "   esto es un registro   " as name;
select rtrim("   esto es un registro   ") as name;

#trim
#elimina los espacion de los lados 
select "   esto es un registro   " as name;
select trim("   esto es un registro   ") as name;

#ucase y upper
#ponen los textos en mayuscula
select "   esto es un registro   " as name;
select ucase("   esto es un registro   ") as name;
select upper("   esto es un registro   ") as name;

#lcase y lower
#ponen los textos en minuscula
select "   esto es un registro   " as name;
select lcase("   esto es un registro   ") as name;
select lower("   esto es un registro   ") as name;

#length, char_length y character_length, para contar la cantidad de caracteres de un registro de un campo
select name, length(name) from country;
select name, char_length(name) from country;
select name, character_length(name) from country;

#insque, position, locate busque lo ingresado dentro del parentesis, y que me traiga en que caracter lo encontro
select name, instr(name,'ar') from country;
select name, position("ar" in name) from country;
#el 3 es para indicar a partir de que caracter tiene que hacer la busqueda
select name, locate('ar',name,3) from country;
select name, instr(name,'ar') from country;

#lpad me rellena de izquierda a derecha con lo que quiera
use world;
select lpad(name,20,"*") from country;
#rpad me rellena de derecha a izquierda con lo que quiera
select rpad(name,20,"*") from country;

#me trae las 3 primeras letras
select left(name,3) from country;
#me trae loas 3 ultimas letras
select right(name,3) from country;

#en que caracter comienza a recortar y cuantos caracter quiero recortar
select substr(name,2,4) from country;
#lo mismo
select substring(name,2,4) from country;

#hasta la segunda aparicion de a, en adelante corta todo
select substring_index(name,"a",1) from country;

use world;

#para que solo la primera letra este en mayuscula, cualquiera de las 3
select 
concat(
ucase(left(continent,1)),
lcase(right(continent,length(continent)-1))
)as Contienente,

concat(
ucase(substr(continent,1,1)),
lcase(substring(continent,2,length(continent)-1))
)as Continente,

concat(
ucase(substr(continent,1,1)),
lcase(substring(continent,2))
)as Continente

from country;

#las veces que quiero que se repita este campo 3 veces
select name, repeat(name,3) from country;

#buscame esta letra y leemplazala por esta, reemplaza las letras a por las b
select name, replace(name,"a","b") from country;

#me trae los campos dado vuelta
select name, reverse(name) from country;

#si son iguales me da 0, si es menor -1
select name, strcmp(name, "Aruba") from country;

#desde el primer caracter, treme los 3
select name, mid(name, 1, 3) from country;












