create database if not exists car_info;
use car_info;
select * from car;

CREATE TABLE CAR (
                     id INT,
                     manufacturer VARCHAR(60),
                     model VARCHAR(45),
                     color VARCHAR(15),
                     model_year INT,
                     price DECIMAL(7 , 2 ),
                     description TEXT
);

insert into CAR(id,manufacturer,model,color,model_year,price)
values
    (1,"BMW","m5","Blue",2011,25000),
    (2,"Fiat","Doblo","Blue",2010,2000);
