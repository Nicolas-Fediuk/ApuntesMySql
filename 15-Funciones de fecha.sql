create database PracticaFecha;

use PracticaFecha;

create table Fecha(
IdFecha int primary key,
Nombre varchar(30),
fecha date 
);

/* al ingresar una fecha se hace sin comillas simples*/
insert into Fecha(IdFecha,Nombre,fecha)
values(3,'ingreso andrea',"2021/8/16"),
(4,'fin nico',"2021/9/1"),
(5,'ingreso carlos',"2021/9/8"),
(6,'fin pablo',"2021/9/13"),
(7,'ingreso lolo',"2021/9/15"),
(8,'fin andrea',"2021/10/2"),
(9,'ingreso lucas',"2021/10/18"),
(10,'fin lolo',"2021/10/22"),
(11,'fin lolo',"2021/11/17"),
(12,'ingreso franco',"2021/12/20");

delete from Fecha where IdFecha>0;

/* me trae la fecha actual */ 
select curdate();
select current_date();

/* me trae la hora actual */
select curtime();
select current_time();

/* la trae la union de la fecha con la hora */
select current_timestamp();
select now();

/* me trae el dia de cada registro*/
select Nombre,day(fecha) from Fecha;
select Nombre,dayofmonth(fecha) from Fecha;

/* dia de la semana*/
select Nombre,dayofweek(fecha) from Fecha;

/* dia del año */
select Nombre,dayofyear(fecha) from Fecha;

/* me trae el mes */
select Nombre,month(fecha) from Fecha;

/* me trae el año */
select Nombre,year(fecha) from Fecha;

/* me trar la fecha y hora de hoy */
select localtime(),now(),localtimestamp(),sysdate();

/* me trae la hora de una fecha */
select time(localtime);

/* solo la hora de una fecha */
select hour(time(localtime));

/* solo los minutos de una fecha */
select minute(time(localtime));

/* solo los segundos de una fecha */
select second(time(localtime));

/* el ultimo dia de ese mes */
select last_day(fecha) from Fecha;

/* pasa la fecha a numeros */
select to_days(fecha) from Fecha;

/* pasa de numeros a fecha */
select from_days(to_days(fecha))from Fecha;

/* en que trimestre se encuentra la fecha*/
select quarter(fecha) from Fecha;

/* la semana del año en que esta va del 0 al 53 */
select week(fecha) from Fecha;
/* comienza del 1 */
select weekofyear(fecha) from Fecha;

/* me trar el año con la semana del año */
select yearweek(fecha) from Fecha;

/* dia de la semana del 0 al 6, lunes = 0 , domingo = 6 */
select weekday(fecha) from Fecha;

/* para que me devuelva los nombres en español argentino*/
set @@lc_time_names = 'es_AR';

/* nos trae el nombre del dia */
select dayname(fecha) from Fecha;

/* nos trae el nombre del mes */
select monthname(fecha) from Fecha;

use practicafecha;

/* le suma 10 dias */
select adddate(fecha,10) from Fecha;

/* me aumento 5 dias */
select adddate(fecha, interval 5 day) from Fecha;

/* me aumenta 5 meses */
select adddate(fecha,interval 5 month) from Fecha;

/* me aumenta 1 año*/
select adddate(fecha,interval 1 year) from Fecha;

/* me aumenta un trimestre */
select adddate(fecha,interval 1 quarter) from Fecha;

/* me aumenta una hora */
select adddate(fecha,interval 1 hour) from Fecha;

/* me aumenta un minuto */
select adddate(fecha,interval 1 minute) from Fecha;

/* me aumenta un segundo */
select adddate(fecha,interval 1 second) from Fecha;

/* me desminuye un año */
select adddate(fecha,interval -1 year) from Fecha;

/* me aumenta una semana */
select adddate(fecha,interval 1 week) from Fecha;

/* es lo mismo */
select date_add(fecha, interval 1 year) from Fecha;

/* me disminuye un año */
select subdate(fecha,interval 1 year) from Fecha;

/* me disminuye una semana */
select subdate(fecha,interval 1 week) from Fecha;

/* me aumenta un año */
select subdate(fecha,interval -1 year) from Fecha;

/* es lo mismo */
select date_sub(fecha, interval 1 year) from Fecha;

/* me aumenta 5 segundos */
select addtime(fecha,'5') from Fecha;

/* me aumenta 1 hora con 5 minutos y 5 segundos */
select addtime(fecha,'01:05:05') from Fecha;

/* me aumenta 1 hora con 5 minutos y 5 segundos, mas 5 dias */
select addtime(fecha,'5 01:05:05') from Fecha;

/* me disminuye 1 hora y 1 dia */
select subtime(fecha,'1 01:00:00') from Fecha;

use practicafecha;

/* la fecha actual */
select date(now())  from Fecha;

/* primero la fecha mayor despues la fecha menor, resta las fechas de los dias, la diferecias de los dias*/
select datediff(fecha, date_add(fecha, interval 4 day)) from Fecha;

/* solo me trae los años */
select extract(year from fecha) from Fecha;

/* solo me trae los dias */
select extract(day from fecha) from Fecha;

/* solo me trae los meses */
select extract(month from fecha) from Fecha;

use practicafecha;

/* dias de la semana abreviado */
select date_format(fecha, ' %a') from fecha;

/* dia del mes numerico */
select date_format(fecha, ' %d') from fecha;

/* nombre del mes */
select date_format(fecha, ' %M') from fecha;

/* año de dos digitos */
select date_format(fecha, ' %y') from fecha;

/* año de cuatro digitos */
select date_format(fecha, ' %Y') from fecha;

/* pasa el valor entre el parentesis a segundos */
select sec_to_time(120);

/* pasa la hora ingresada a segundos */
select time_to_sec("00:01:01");

/* la difrecencia entre horas */
select timediff(sec_to_time(61),sec_to_time(51));

use practicafecha;

/* formato de pm am */
select time_format('22:30:10', '%h:%i:%s %p') from Fecha;

/* string a fecha */
select str_to_date('August 09 1997', '%M %d %Y') from Fecha;

/* me trae la fecha de ese dia del año */
select makedate(2021, 128);

/* me forma la hora con las horas, minutos y segundos ingresados */
select maketime(12,  20 , 10);

/* ingreso el año y el mes juntos y despues la catidad de meses a aumetar*/
select period_add(20211, 2);

/* ingreso el año y el mes juntos y despues otro y me devuelve la diferencias en meses*/
select period_diff(202102, 202111);

/* me une la fecha y la hora */
select timestamp('2021-10-2', '17:25:19');

/* me agrega un minuto esa fecha */
select timestampadd(minute, 1, '2021-08-02');

/* me agrega un dia a esa fecha */
select timestampadd(day, 1, '2021-08-02');

/* me agrega una semana a esa fecha */
select timestampadd(week, 1, '2021-08-02');

/* me trae la diferencia en meses de las dos fechas */
select timestampdiff(month,'2021-02-16','2021-08-02');

/* me trae la diferencia en meses de las dos fechas */
select timestampdiff(month,'2021-02-16','2021-08-02');

/* me trae la diferencia en dias de las dos fechas */
select timestampdiff(day,'2021-02-16','2021-08-02');

/* me trae la diferencia en semanas de las dos fechas */
select timestampdiff(week,'2021-02-16','2021-08-02');

/* obtener la edad de las fechas */
select timestampdiff(year,fecha,now()) as Años from Fecha;

select year(sysdate())-year(fecha) from Fecha;













