/* por si no anda para crear funciones */
SET GLOBAL log_bin_trust_function_creators = 1;

delimiter //
create function saludar() returns varchar(50) 
	begin
		return 'Hola';
	end//
delimiter ;
    
select saludar();

/* para ver todas las funciones */
show function status;

/* para eliminar una funcion */
drop function saludar;

/* fucion declarando variables, salida el default */
delimiter //
create function saludar() returns varchar(50)
	begin
    declare saludo varchar(50) default 'hola';
    return saludo;
    end 
    //
    
select saludar();

/* fucion declarando variables, salida desde el valor de la variable */
delimiter //
create function saludar() returns varchar(50)
	begin
    declare saludo varchar(50);
    set saludo = 'hola';
    return saludo;
    end 
    //
    
 drop function saludar;   

/* funciones con parametros */
delimiter //
create function saludar(nombre varchar(50)) returns varchar(50)
	begin
    return concat("hola ",nombre, "!");
    end 
    //
select saludar("nicolas");

/* funcion con desicion */
delimiter //
create function saludar(nombre varchar(50)) returns varchar(50)
	begin
		if nombre = "" then 
			return "hola por default";
		else
			return concat("hola ",nombre, "!");
		end if;
    end 
    //
select saludar("nicolas");
select saludar("");

delimiter //
create function sueldo(numero float) returns varchar(50)
	begin
		declare tipo varchar(50);
        case
			when numero < 1500 then
            set tipo = "bajo";
            when numero < 2500 then
            set tipo = "medio";
            else
            set tipo = "alto";
        end case;
		return tipo;
    end 
    //
drop function sueldo;
select sueldo(1500);
select sueldo(1400);
select sueldo(3500);

/* multiples parametros */
delimiter //
create function sueldo(numero float, sueldoAnterior float) returns varchar(50)
	begin
		return numero - sueldoAnterior;
    end 
    //
drop function sueldo;
select sueldo(1500,1000);

