# use car;
#
# SELECT manufacturer,  COUNT(manufacturer),SUM(price),AVG(price),MAX(model_year),MIN(model_year) from car_info.car GROUP BY manufacturer;
# SELECT AVG(price), color FROM car GROUP BY color;
#
# SELECT price, COUNT(price), MIN(model_year),MAX(model_year) from car group by price
# HAVING AVG(model_year)>2010 AND COUNT(price) >1;

# use work;
#
# SELECT blog.name,blog.blog_id FROM articles
# INNER JOIN blog ON articles.blog_id = blog.blog_id;
#
# SELECT articles.text,blog.name FROM articles
# Left JOIN blog ON articles.blog_id = blog.blog_id WHERE blog.blog_id is null ;
#
# SELECT articles.text,blog.name FROM articles
# RIGHT JOIN blog ON articles.blog_id = blog.blog_id;
#
# SELECT articles.text,blog.name FROM articles
# right JOIN blog ON articles.blog_id = blog.blog_id WHERE articles.article_id is null ;

use World;
CREATE DATABASE IF NOT EXISTS World;
CREATE TABLE  IF NOT EXISTS county(
    id INT AUTO_INCREMENT NOT NULL ,
    Name VARCHAR(20),
    count_of_cities LONG NOT NULL ,
    PRIMARY KEY (id)
);

CREATE TABLE IF NOT EXISTS city(
      id INT AUTO_INCREMENT NOT NULL ,
      Name VARCHAR(20),
      country_id INT,
      FOREIGN KEY (country_id) REFERENCES county(id),
      PRIMARY KEY (id)
);
CREATE TABLE IF NOT EXISTS capital
(
    id         INT AUTO_INCREMENT NOT NULL,
    Name       VARCHAR(20)        NOT NULL,
    country_id INT,
    FOREIGN KEY (country_id) REFERENCES county (id),
    primary key (id)
);
CREATE TABLE IF NOT EXISTS market(
    id         INT AUTO_INCREMENT NOT NULL,
    Name       VARCHAR(20)        NOT NULL,
    PRIMARY KEY (id)

);

CREATE TABLE IF NOT EXISTS City_market (
    market_id INT NOT NULL ,
    city_id INT NOT NULL ,
    constraint id primary key (city_id,market_id),
    FOREIGN KEY (city_id) references city(id),
    FOREIGN KEY (market_id) references market(id)

);












