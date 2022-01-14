 /* trae el usuario conectado */
select current_user();
select session_user();
select system_user();
select user();

/* version de mysql */
select version();

/* para saber en que base de datos estamos conectados */
select database();

/* para saber el id de la conexio que tengo con mysql*/
select connection_id();

/* nos da el id donde el campo sea autoinclement */
last_insert_id();

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

use despartametos;
create table secuencia
(
id int 
);
insert into secuencia 
values(1);
insert into secuencia
values(2);

select * from secuencia;

select last_insert_id();

drop table secuencia;

create table secuencia
(
id int primary key auto_increment 
);
insert into secuencia
values (null);

/* me devuelve el ultimo id */
select last_insert_id();

/* condicion, si, no */
select if(100>200, 'si','no');

/* es no es nulo devuelve un 0, sino un 1 */
select isnull('hola');

/* si es nulo "es nulo" */
select ifnull(null, 'es nulo');




