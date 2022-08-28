create database if not exists library;--
use library;

select * from books;

create table books(
name VARCHAR(120) not null,
description VARCHAR(120) default("description missing"),
date VARCHAR(15) not null default("2018-01-01"),
author VARCHAR(60) not null,
category VARCHAR(30) not null
);

insert into books(name,description,date,author,category)
values
("Big Encyclopedya",default,default,"Oxford","scientific"),
("Physics","about Physics","1992","USSR","scientific"),
("Chemistry",default,"2001","Ukraine","scientific");
