create database cursoSql;

use cursoSql;

create table Usuario
(
Id int,
Nombre varchar(20),
Apellido varchar(20),
Edad int 
);

create table cursoSql.Persona
(
Id int
);

#para agregar un campo a la tabla persona
alter table Persona add Nombre varchar(20);

#para agregar varios campos a la tabla
alter table Persona add Apellido varchar(20), add Edad int;

#para cambiar el campo Edad por Años
alter table Persona change Edad Años int;

#para modificar el tipo de dato a Años
alter table Persona modify Anios date;

#para borrar un campo
alter table Persona drop Anios;

show tables;

drop table Persona;
