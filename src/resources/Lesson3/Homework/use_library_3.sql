USE library;

SELECT * from book;
UPDATE book SET AuthorName = 'OleksiiA' WHERE Id = 4 or Id = 5;
select count(awards) as count from book;
SELECT NumPage,describ, MIN(NumPage)from book;
SELECT MAX(NumPage) FROM book;
SELECT AVG(NumPage) FROM book;
SELECT AVG(age) FROM book;
SELECT COUNT(Id) from book where category = 'military';
SELECT MIN(age) FROM book;
SELECT Age,describ,category, MIN(age)from book;
select * from book where book.category like '%mil%';
select * from book where book.category like '%nat%';
select * from book where book.category like '%echn%';
SELECT * from book where age between 20 and 50;
ALTER TABLE book drop column id;
DELETE FROM book;

