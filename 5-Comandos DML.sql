use cursosql;

#para insertar datos
insert into datospersonales(id,Nombre,Apellido,Edad,Dni,Sexo)
values(null,'Nicolas','fediuk',22,'41542382','m');

#otra forma de insertar datos
insert into datospersonales
values(null,'Sergio','fediuk',53,'41542','m');

#insertar varios datos
insert into datospersonales
values(null,'PAbo','Cabrera',43,'415','m'),
(null,'Andrea','Echeveste',50,'41','f');

select * from datospersonales;

#cambiar la edad donde el id=1
update datospersonales  set Edad = 30 where id=1;

#cambiar edad y demas, del Id 2
update datospersonales set Edad=12, Dni='123', Sexo='f' where Id=2;

#Elimina todos los registros de la tabla
delete from datospersonales;

#Elimina el regitro con el Id 4
delete  from datospersonales where Id=4;

select * from datospersonales;

#Elimina los registro con el sexo f
delete from datospersonales where Sexo='f';


