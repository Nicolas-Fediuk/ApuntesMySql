#inner join
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

select  *from Usuarios;

select Nombre_usuarios, Nombre_dep from Usuarios inner join Departamentos
on Departamentos.Id_dep = Usuarios.Id_ususarios;

create table Pagos
(
Id_pagos int primary key,
Monto_pago double,
Id_usuario_pago int, foreign key (Id_usuario_pago) references Usuarios (Id_ususarios)
);

insert into Pagos
values(1,200,1),
(2,300,2);

select * from Pagos;

select Nombre_usuarios, Nombre_dep,Monto_pago from Usuarios inner join Departamentos
on Departamentos.Id_dep = Usuarios.Id_ususarios inner join Pagos
on Usuarios.Id_ususarios = Pagos.Id_usuario_pago;


#-------------------------------------------------------------------------
#left join

use world;

#todo lo que tiene departmentos y en comun con los usuarios
select Id_dep,Nombre_dep,Id_ususarios,nombre_usuarios from departamentos
 left join Usuarios on departamentos.Id_dep = Usuarios.Id_ususarios;
 
 #-------------------------------------------------------------------------
  #right join
  
  #todo lo que tiene Usuarios mas lo comun con departamento
  select Id_dep,Nombre_dep,Id_ususarios,nombre_usuarios from departamentos
 right join Usuarios on departamentos.Id_dep = Usuarios.Id_ususarios;
 
 #-------------------------------------------------------------------------
 #self join
 use world;
 
 #Podemos traer las dos tablas
 select Nombre_usuarios, Id_departamento_usuario,Id_dep,Nombre_dep from Usuarios, Departamentos
 where Usuarios.Id_departamento_usuario = Departamentos.Id_dep;
 
 #------------------------------------------------------------------------

 

