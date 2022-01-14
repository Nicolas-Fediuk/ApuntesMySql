use cursosql;

create table Valores
(
Nombre varchar(20) not null 
);

#Para ver la descripcion de los campos
desc Valores;

alter table Valores add Apellido varchar(20) not null;

#Cambiar el nombre a la tabla
alter table usuario rename Personas;

#cambiar el nombre a varias tablas
rename table personas to ususarios, valores to otros;

create table DatosPersonales
(
Id bigint auto_increment,
Nombre varchar(20),
Apellido varchar(20),
Edad int,
Dni varchar(20),
Sexo char(1),
primary key (Id),
unique Dni (Dni),
fulltext index Nombre (Nombre),
Index Apellido (Apellido)
);

create table OtrosDatos
(
Id bigint primary key,
Nombre varchar(20),
Apellido varchar(20),
Edad int,
Dni varchar(20) unique,
Sexo char(1)
);

create table OtrosDatos2
(
Id bigint,
Nombre varchar(20),
Apellido varchar(20),
Edad int,
Dni varchar(20),
Sexo char(1)
);

#crear un indice index por fuera
create index Idx_Apellido on OtrosDatos2 (Apellido);

#crear un indice index por fuera
alter table OtrosDatos2 add index Nombre (Nombre);

#borrar un indice index por fuera
drop index Nombre on OtrosDatos2;

#crear un indice fullltext index por fuera
alter table OtrosDatos2 add fulltext index Nombre (Nombre);

#crear un indice unique index por fuera
alter table OtrosDatos2 add unique index Dni (Dni);

#crear un indice clave primaria por fuera
alter table OtrosDatos2 add primary key (Dni);


