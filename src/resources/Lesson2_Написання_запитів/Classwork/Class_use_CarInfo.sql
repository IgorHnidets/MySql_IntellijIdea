
USE car_info;

INSERT INTO  car(id,color, manufacturer, model, model_year, price, description)
VALUE
    (4,'green','VW','golf',2010,5000,'almost good car'),
    (5,'red','VW','B6',2008,7000,'almost nice car'),
    (6,'white','MB','S300',2010,52000,'almost very good car');

SELECT * FROM car WHERE price > 5000 AND price <10000;
SELECT * FROM car WHERE color = 'green' or color = 'red';
SELECT * FROM car WHERE not model_year = 2005;
SELECT * FROM car  ORDER BY  model_year;
SELECT * FROM car  ORDER BY  manufacturer;
select  * FROM car WHERE model ='vw' ORDER BY  price;
SELECT   * FROM car WHERE price <2000 AND color = 'black' ORDER BY manufacturer;