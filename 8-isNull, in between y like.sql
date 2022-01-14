# is null y not null

use world;

select * from country;

#todos los campos donde IndepYear sea nulo
select * from country where IndepYear is null;

#otra forma
select * from country where isnull(IndepYear);

#todos los valores no nulo
select * from country where IndepYear is not null;

#que este en blanco
select * from country where HeadOfState = '';

#------------------------------------------------------------
#in y between

#Los valores que quiero encontrar
select * from country  where Code in ('ABW','AFG');

#Todos los valores menos esos
select * from country  where Code not in ('ABW','AFG');

#todos los registros entre esos numeros
select * from country  where SurfaceArea between 100 and 1600;

#todos los registros por fuera de entre esos nuemros (Complemento)
select * from country  where SurfaceArea not between 100 and 1600;

#-------------------------------------------------------------------------
#Like

#que empieze con a seguido de cualquier letra
select * from country where name like 'a%';

#cualquier letra seguida de la letra a
select * from country where name like '%a';

#cualquier palabra que tenga en el medio go
select * from country where name like '%go%';

# _ ignora un caracter
select * from country where name like 'angol_';

# _ ignora 5 caracteres
select * from country where name like 'a_ _ _ _ _';

# _ ignora 5 caracteres, para no buscar eso, que no cumplan con eso
select * from country where name not like 'a_ _ _ _ _';




