use library;

SELECT * FROM book;

SELECT Bookname,price from book1 INNER JOIN author ON book_id=Author_id;

SELECT Bookname,author.AuthorName from book1 LEFT JOIN author on book_id = Author_id;

SELECT Bookname,author.AuthorName from book1 RIGHT JOIN author on book_id = Author_id;

SELECT Bookname,author.AuthorName from book1 LEFT JOIN author on book_id = Author_id
WHERE book_id is null ;

SELECT Bookname,author.AuthorName from book1 RIGHT JOIN author on book_id = Author_id
WHERE book_id is null ;



