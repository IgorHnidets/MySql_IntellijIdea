use library;

CREATE TABLE book1(
    book_id INT NOT NULL auto_increment,
    Bookname  VARCHAR(50),
    describ VARCHAR(50),
    price DOUBLE,
    isbn VARCHAR(20),
    PRIMARY KEY (book_id),
    FOREIGN KEY (book_id) REFERENCES genre(genre_id)
);
CREATE TABLE genre(
    genre_id INT NOT NULL auto_increment,
    GenreName VARCHAR(50),
    PRIMARY KEY (genre_id)
);
CREATE TABLE author(
    Author_id INT NOT NULL auto_increment,
    Authorname VARCHAR(50),
    surname VARCHAR(50),
    email VARCHAR(20),
    adress VARCHAR(40),
    dateOfBirth DATE,
    PRIMARY KEY (Author_id)
);
CREATE TABLE author_book(
    Auth_id INT NOT NULL ,
    Bk_id INT NOT NULL ,
    CONSTRAINT name PRIMARY KEY (Auth_id,Bk_id),
    FOREIGN KEY (Auth_id) REFERENCES author(Author_id),
    FOREIGN KEY (Bk_id) REFERENCES  book1(book_id)
);