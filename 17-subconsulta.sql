create database world;

use world;

create table Departamentos
(
Id_dep int primary key,
Nombre_dep varchar(20) unique
);

insert into departamentos
values(1,'contabilidad'),
(2,'TI'),
(3,'RRHH');

select * from departamentos;

create table Usuarios
(
Id_ususarios int primary key,
Nombre_usuarios varchar(20) unique,
Id_departamento_usuario int, foreign key (Id_departamento_usuario) references Departamentos(Id_dep) 
);

insert into Usuarios
values(1,'nicolas',1),
(2,'pablo',2),
(3,'andrea',2);

/* Usuarios con el maximo id */
select *  from usuarios
where Id_departamento_usuario = (select max(Id_departamento_usuario) from usuarios);

/* usuarios con el id mayor al promedio*/
select Id_ususarios, Nombre_usuarios, Id_departamento_usuario from usuarios
where Id_departamento_usuario > (select avg(Id_departamento_usuario) from usuarios);

/*all =  todos
any = cualquiera
in = todos */



