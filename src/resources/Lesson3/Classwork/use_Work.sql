CREATE DATABASE IF NOT EXISTS Work;
use Work;
create table employee(
                         id int not null auto_increment,
                         Name varchar(30) not null ,
                         surname varchar(50) not null ,
                         position varchar(40) not null ,
                         age int not null ,
                         dateOfBirth date not null ,
                         salary float ,
                         roomNumber int,
                         primary key (id)
);

insert into employee
(Name, surname, position, age, dateOfBirth, salary, roomNumber)
VALUES
    ('Igor','Hnidets','worker',20,'2001-09-21',5000,2016),
    ('Max','Bazinyak','mangalMan',19,'2002-08-15',8000,2006),
    ('Artem','Soludchyk','Python developer',20,'2002-02-07',5000,2005);