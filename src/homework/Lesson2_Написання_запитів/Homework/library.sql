use library;
CREATE TABLE book(
                     Id INT not null primary key auto_increment,
                     namesOfBook VARCHAR(50),
                     describ VARCHAR(50),
                     created DATETIME default('2018-01-01') not null ,
                     category VARCHAR(30) not null ,
                     isbn VARCHAR(20) not null,
                     NumPage INT not null ,
                     AuthorName VARCHAR(45) not null ,
                     email VARCHAR(50) not null ,
                     age INT not null ,
                     awards VARCHAR(120) ,
                     unique key (isbn));
INSERT INTO book( namesOfBook, describ , created ,category ,isbn ,NumPage ,AuthorName ,email ,age ,awards)
    VALUE ('War 1957','about war','1957-04-22 ','military','34675',120,'YuriyB','yura1@ukr.net',50,'author2001'),
    ('Animals of africa','about animals','1999-03-22','nature','88584',245,'VasylG','vas03@ukr.net',29,'author2001'),
    ('Forests of Ukraine','about Forests','2000-10-04','nature','58694',130,'MarkB','mark@ukr.net',36,'author2000'),
    ('Smartphones in Future','about smartphones','2011-06-20','technology','69375',233,'OlehE','oleg3@ukr.net',42,'author2001'),
    ('Descktops 2011','about desctops','2020-04-22','technology','69355',153,'Igork','igorr24@ukr.net',42,'author2001'),
    ('Cars 1960','about cars','2015-06-30','technology','60365',149,'MaksR','mArVDs2@ukr.net',35,'author2004'),
    ('Tigers in world','about tigers','2004-10-14','nature','54734',232,'MarkO','maGrk@ukr.net',46,'author2000'),
    ('Threes of China','about threes','2021-06-20','nature','97654',336,'OlehS','olSFeg3@ukr.net',20,'author2001'),
    ('T-72','about tanks','2016-03-22','military','53782',123,'IgorH','igorE246@ukr.net',30,'author2001'),
    ('Mig29','about aircraft','2017-04-26','military','64225',253,'MaksN','mArsE2@ukr.net',50,'author2004');
SELECT *FROM book;
SELECT * FROM book WHERE Id=5 OR Id=10 OR Id=13;
SELECT  * FROM book WHERE  NumPage > 150;
SELECT  * FROM book WHERE email = 'maGrk@ukr.net';
SELECT  * FROM book WHERE isbn = '53782';
SELECT  * FROM book WHERE category = 'military';
SELECT  * FROM book WHERE NumPage>200 AND age >25;
SELECT  * FROM book WHERE category = 'military' OR category = 'nature';
SELECT  * FROM book ORDER BY namesOfBook;
SELECT  * FROM book ORDER BY email;
SELECT  * FROM book ORDER BY NumPage DESC ;
SELECT  * FROM book WHERE created > '2000-01-01';
SELECT  * FROM book WHERE created < '2010-01-01';
SELECT * FROM  book WHERE  created between '2000-01-01' and '2010-01-01';