use mini_models_shop;
CREATE TABLE  products(id INT NOT NULL AUTO_INCREMENT,name VARCHAR(50),description TEXT,categore VARCHAR(20),code INT,scale FLOAT,QIS INT,price FLOAT,Created DATETIME,PRIMARY KEY (id));
INSERT INTO products (name,description,categore,code,scale,QIS,price,Created)
    VALUE ('Canabis','medical','medicine',2022,20.5,1000,100,'2022-05-27 18:54' ),
    ( 'Sugar','kitchen','Formula',2021,60.5,1000,100,'2022-05-27 18:51' ),
    ( 'Petrol','gas','gas',780,1000,900,100,'2022-05-27 18:58' );

# SELECT name,price,categore FROM  products WHERE NOT price = 100 and categore='gas';
INSERT INTO  products(name,products.code)
    VALUE ('TEST1',10),
    ('TEST2',10);

SELECT name, products.description AS descr FROM products WHERE description IS NULL ;
# SELECT name,price,categore,code FROM products WHERE price<100 products ORDER BY code, name ASC ;
# SELECT id,name FROM  products WHERE  description IS NOT NULL and id =5;
SELECT  * FROM products LIMIT 3;
SELECT  * FROM products ;