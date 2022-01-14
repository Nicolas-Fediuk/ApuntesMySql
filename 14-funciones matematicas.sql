#Funciones matematicas

#retorna el seno de 2
select sin(2);

#arcoseno de 2, si renorta nulo sale del rango del arcoseno
select asin(0.2);

#coseno de 2
select cos(2);

#arcocoseno de 1, si retorna nulo sale del rango, -1 entre 1 ni mas ni menos
select acos(1);

#tangente de 1.75, con formato de radiantes
select tan(1.75);

#arcotangente de 2
select atan(2);

#codtangente de 12
select cot(12);

#el valor abosoluto, el valor positivo
select abs(2);

#el exponente de un numero
select exp(2);

#logaritmo
select ln(2);

#logaritmo
select log(2);

#modulo de una division, el resto
select mod(234,10);

#pi
select pi();

#potencia, 2 elevado a la 2
select pow(2,2);

#me trae un numero flotante, sirve para trae informacion aleatorea
select rand();
use world;
select * from country order by rand();

#redondea y de cuantos decimales
select round(-1.2003,2);

#redonde y de cuantos decimales
select truncate(1.224,1);

select round(percentage)
from countrylanguage;

#se puede hacer opreciones matematicas, inclusive a los campos
select 5+10;

