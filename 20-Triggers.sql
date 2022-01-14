use world;

create table DatosPersonales
(
id int auto_increment primary key,
Nombre varchar(50),
Edad int,
Comentario varchar(225)
);

select * from DatosPersonales;

/* create trigger "Nombre", se va a ejecutar antes del insert, que se va a aplicar a la tabla DatosPersonales
for each row(obligatorio para cada fila), donde se va a ingresar un nuevo valor en el campo comentario */
create trigger tr_bi before insert
on DatosPersonales
for each row set new.Comentario = 'insertado desde el trigger tr_bi'; 

/* para ver los triggers */
show triggers;

insert into DatosPersonales(Id,Nombre,Edad,Comentario)
values(null,'Nicolas',23,'');

DELIMITER $$
create trigger tr_bu before update 
on DatosPersonales
for each row 
	begin
		if new.Edad > 18 then
			set new.Comentario = 'Mayor de edad';
		elseif new.Edad <= 18 then
			set new.Comentario = 'Menor de edad';
		end if;
    end$$
DELIMITER  ;

show triggers;

update DatosPersonales set Edad=16, Nombre='Pablo' where Id=1;

select * from DatosPersonales;

create table log_DP
(
Id int auto_increment primary key,
IdRegistro int,
AnteriorNombre varchar(50),
NuevoNombre varchar(50),
AnteriorEdad int,
NuevaEdad int,
Usuario varchar (100),
fechaModificado datetime
);

DELIMITER //
create trigger Log_DP_AU after update
on DatosPersonales
for each row 
	begin
		insert into Log_DP(Id,IdRegistro,AnteriorNombre,NuevoNombre,AnteriorEdad,NuevaEdad,Usuario,fechaModificado)
        values(null,OLD.Id,OLD.Nombre,new.Nombre,OLD.Edad,new.Edad,current_user(),now() );
    end//
DELIMITER  ;

update DatosPersonales set Edad=32,Nombre='jose' where Id=1; 

select * from Log_DP;

use world;

/* para borrar un trigger */
show triggers;

drop trigger tr_bi;





