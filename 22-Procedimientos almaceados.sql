use departamentos;

/* para traer los ultimos 10 usuarios */
create procedure ultimosUsuarios()
select * from personas order by Nombre desc limit 10;

/* llamamos al procedimiento almacenado */
call ultimosUsuarios();

/* para ver los procedimiento almacenados */
show procedure status;

/* para borrarlos */
drop procedure ultimosUsuarios;

delimiter //
create procedure buscarXid
(
in ID int
)
begin
	select * from personas where PersonaId = ID;
end //
delimiter ;

call buscarXid(1);

drop procedure buscarXid;

/* suma un numero con el mismo y guarda el resultado en "resultado" */
delimiter //
create procedure sumar
(
in numero int, out resultado int
)
begin
	select numero + numero into resultado;
end //
delimiter ;

/* llamamos al procedimiento, le pasamos el numero que queremos sumar y la variable guarda el resultado */ 
call sumar(10,@res);

/* llamamos la variable para ver el resultado */
select @res;

drop procedure sumar;


/* parece lo mismo que lo aterior */
delimiter //
create procedure sumar
(
in numero int, inout resultado int
)
begin
	select numero + numero into resultado;
end //
delimiter ;

call sumar(10,@res);

select @res;

delimiter //
create procedure contarXnombre
(
in NOMBRE char(50), out resultado int
)
begin
	select count(*) into resultado from personas where Nombre = NOMBRE;
end //
delimiter ;

call contarXnombre('pablo',@res);

select @res;

/* para ingresar datos */
delimiter //
create procedure insertarDatos
(
in PERSONAID int,
in NOMBRE varchar(50), 
in APELLIDO varchar(50),
in DEPIDPERSONA int
)
begin
	insert into personas(PersonaID,Nombre,Apellido,DepIdPersona)
    values(PERSONAID,NOMBRE,APELLIDO,DEPIDPERSONA);
end //
delimiter ;

call insertarDatos(3,"Sandra","Palma",2);

select * from personas;

drop procedure insertarDatos;





