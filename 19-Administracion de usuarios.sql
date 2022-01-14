/* para ver los usuarios de sql*/
select * from mysql.user;

/* para crear un nuevo usuario, el nombre y contraseña, puede ingresar a cualquier servidor que exista */
create user Usuario2 identified by '123';

/* otro usuarios pero solo puede acceder al servidor local */
create user Usuario3@localhost identified by '1234';

/* para cambiar la contraseña de un usuario*/
set PASSWORD for Usuario3@localhost = PASSWORD('1234');

/* Permisos = para crear o eliminar bases de datos, comandos DML, DDL, etc */

/* le doy permisos de acceso, a la base de datos world, solo a la tabla usuarios al usuario Usuario2,
solo tiene permisos para ver la tabla y la base de datos, no puede editarla, solo el select */
/* para darle permisos a toda las tablas de la base de datos tengo que poner world.* */
grant select on world.usuarios to Usuario2;

/* para darle privilegios de insetar e eliminar datos */
grant select, insert, delete on world.usuarios to Usuario2;

/* para hacer select con determinados campos, insert, delete */
grant select(Id_ususarios, Nombre_usuarios), insert, delete on world.usuarios to Usuario2;

/* todos los privilegios, con todas las tblas de esa base de datos */
grant all privileges on world.* to Usuario2;

/* quitarle los permisos de select, se puede hacer con otros permisos */
revoke select on world.usuarios from Usuario2;

/* quitarle todos los privilegios */
revoke all privileges on world.usuarios from Usuario2;

/* permisos para crear usuarios */
grant create user on *.* to Usuario2;

/* permisos para crear y conceder permisos */
grant create user on *.* to Usuario2 with grant option ;

/* revocar todos los permisos */
revoke all privileges on *.* from Usuario2;

/* eliminar usuario */
drop user Usuario2;









