use library;

CREATE TABLE book1(
    Bookname  VARCHAR(50),
    describ VARCHAR(50),
    price DOUBLE,
    isbn VARCHAR(20),
    PRIMARY KEY (Bookname),
    FOREIGN KEY (Bookname) REFERENCES genre(GenreName)
);
CREATE TABLE genre(
    GenreName VARCHAR(50),
    PRIMARY KEY (GenreName)
);
CREATE TABLE author(
    Authorname VARCHAR(50),
    surname VARCHAR(50),
    email VARCHAR(20),
    adress VARCHAR(40),
    dateOfBirth DATE,
    PRIMARY KEY (Authorname)
);
CREATE TABLE author_book(
    AuthName VARCHAR(20),
    BkName VARCHAR(20),
    CONSTRAINT name PRIMARY KEY (AuthName,BkName),
    FOREIGN KEY (AuthName) REFERENCES author(Authorname),
    FOREIGN KEY (BkName) REFERENCES  book1(Bookname)
);