desc ususarios;

insert into ususarios(Id,Nombre,Apellido,Edad)
values(1,'Nicolas','Fediuk',23),
(2,'Nicolas','Fediuk',23),
(3,'Nicolas','Fediuk',23);

select * from ususarios;

#Elimina todos los registros
truncate ususarios;

#para ver los motores de almacenamiento
show engines;

create database Departamentos;
use Departamentos;

create table Departamentos
(
DepId int primary key,
NombreDep varchar(200)
);

create table Personas
(
PersonaId int primary key,
Nombre varchar(20),
Apellido varchar(20),
DepIdPersona int, 
foreign key (DepIdPersona) references departamentos (DepId)
);

insert into Departamentos(DepId,NombreDep)
values(1,'primer piso'),
(2,'segundo piso'),
(3,'tercer piso');

select * from departamentos;

insert into Personas(PersonaId,Nombre,Apellido,DepIdPersona)
values (1,'nico','fediuk',2),
(2,'pablo','cabrera',3);

select * from Personas;

#para ver el nombre de la clave foreana
show create table Personas;

#Para eliminar el foreign key de una tabla
alter table Personas drop foreign key personas_ibfk_1;

#Para crear una nuva clave foranea, de tipo cascade, para que cuando se realice un cambio de la tabla principal 
#se realice un cambio en la tabla secundaria
alter table Personas add foreign key (DepIdPersona) references Departamentos (DepId)
on delete cascade on update cascade;

update departamentos set DepId = 4 where DepId=2;

delete from departamentos where DepId=4;

