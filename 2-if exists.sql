show databases;

#si no existe la base de datos que la cree
create database if not exists aaa;

use aaa;

#si no existe la tabla, que la cree
create table if not exists prueba
(
id int
);

show tables;

#si existe la tabla, que la borre
drop table if exists prueba;