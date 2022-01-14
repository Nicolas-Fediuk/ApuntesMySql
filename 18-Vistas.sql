use world;

/* para crear o editar una vista */
create or replace view IdDepEmpleado as select Nombre_usuarios, max(Id_departamento_usuario) as Salario
from usuarios group by Id_departamento_usuario
order by Id_departamento_usuario desc;

/* para llamar una vista */
select * from IdDepEmpleado;

/* para ver la informacion de una vista */
show create view IdDepEmpleado;

/* para eliminar una vista */
drop view IdDepEmpleado;
