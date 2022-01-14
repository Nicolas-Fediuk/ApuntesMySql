#Para crear tablas de otra tabla

use world;

show tables;

#creo una tabla con lo que tengo en la consulta
create table cityBackup as select * from city;

select * from city;

select * from cityBackup2;

#tambien se puede filtar la informacion a agregar con where, etc
create table cityBackup2 as select Name,District from city;

use cursosql;

show tables;

#creo la tabla en cursosql
create table cursosql.cityBackup2 as select Name,District from city;

#-------------------------------------------------------------------------
#union y union all

use world;

create table table1
(
col1 char(1),
col2 char(1)
);

create table table2
(
col1 char(1),
col2 char(1)
);

show tables;

insert into table1(col1,col2)
values('a','a');

insert into table1(col1,col2)
values('a','b');

insert into table1(col1,col2)
values('a','c');

insert into table1(col1,col2)
values('a','d');

insert into table2(col1,col2)
values('a','d');

insert into table2(col1,col2)
values('a','e');

select * from table1;

#une los registros de la tabla, excepto los duplicados
(select * from table1) union (select * from table2);

#une los registros de la tabla, y los duplicados duplicados
(select * from table1) union all (select * from table2);

#---------------------------------------------------------------
#group by
use world;

select countryCode,name from city order by countryCode asc;

#agrupamos por countryCode, osea no se repite 
select countryCode,count(name) from city group by countryCode order by countryCode asc;

#agrupamos por countryCode, osea no se repite y el mayor population
select countryCode,count(name),max(population) from city group by countryCode order by countryCode asc;

#el group by agrupa, sin que se repita y podes hacer distintos filtrados, como max, min, avg, count, etc





