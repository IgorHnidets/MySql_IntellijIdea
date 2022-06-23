CREATE database IF NOT EXISTS social_network;
USE social_network;
CREATE TABLE IF NOT EXISTS user
(
    id      INT AUTO_INCREMENT NOT NULL,
    name    VARCHAR(50)        NOT NULL,
    surname VARCHAR(50)        NOT NULL,
    age     TINYINT            NOT NULL,
    PRIMARY KEY (id)
    );

CREATE TABLE IF NOT EXISTS account
(
    id       INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    login    VARCHAR(30)        NOT NULL,
    password VARCHAR(100)       NOT NULL,
    user_id  INT UNIQUE,
    FOREIGN KEY (user_id) REFERENCES user (id)
    );

CREATE TABLE IF NOT EXISTS album
(
    id               INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title            VARCHAR(255),
    number_of_photos INT,
    account_id       INT                NOT NULL,
    FOREIGN KEY (account_id) REFERENCES account (id)
    );

CREATE TABLE IF NOT EXISTS photo
(
    id    INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    title VARCHAR(50),
    size  INT                NOT NULL
    );

CREATE TABLE IF NOT EXISTS message
(
    id         INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    text       TEXT               NOT NULL,
    account_id INT                NOT NULL,
    FOREIGN KEY (account_id) REFERENCES account (id)
    );

CREATE TABLE IF NOT EXISTS album_photo
(
    album_id INT NOT NULL,
    photo_id INT NOT NULL,
    CONSTRAINT id PRIMARY KEY (album_id, photo_id),
    FOREIGN KEY (album_id) REFERENCES album (id),
    FOREIGN KEY (photo_id) REFERENCES photo (id)
    );
# user(id, name, surname, age)
#     account(id, login, password)
#            album(id, title, number_of_photos)
#                 photo(id, title, size)
#                      message(id, text)

use social_network;
INSERT INTO user (name, surname, age)
VALUES ('Petro', 'Petrenko', 25),
       ('Ivan', 'Ivanenko', 35),
       ('Boris', 'Jonsonuk', 58),
       ('Inna', 'Ivanenko', 27),
       ('Mykola', 'Lysenko', 27);

INSERT INTO account (login, password, user_id)
VALUES ('petka25@mail.com', 'malboro23', 1),
       ('ivanIsIvan@mail.com', 'megaivan3000', 2),
       ('boris_super_start@mail.com', 'parlamntOfUK2017', 3),
       ('inna_javelinna@mail.com', 'antiTank72', 4),
       ('turnikman2022@mail.com', 'kolichka_protein', 5);

INSERT INTO album (title, number_of_photos, account_id)
VALUES ('More2021', 7, 1),
       ('Just Ivan', 100, 2),
       ('Parlament', 120, 3),
       ('Tanks', 134, 4),
       ('Workout', 30, 5);

INSERT INTO photo (title, size)
VALUES ('Me and Boris', 120),
       ('IMG1200123', 230),
       ('2020-07-08', 220),
       ('Ya and turnik', 101),
       ('T-72B3', 340),
       ('Vladik.jpg', 320);

INSERT INTO message(text, account_id)
VALUES ('Dobriy den everybody', 3),
       ('Do you now MC Petya', 1),
       ('Lets go to turniki', 5),
       ('Helo, My name is Ivan', 2),
       ('Call me please!!!!!!!!!!!', 4);

INSERT INTO album_photo (album_id, photo_id)
VALUES (1, 2),
       (2, 1),
       (2, 3),
       (3, 4),
       (3, 5),
       (4, 2),
       (4, 5),
       (5, 6),
       (5, 4);

SELECT account.password, account.login
FROM user
         INNER JOIN account ON user.id = account.user_id
WHERE user.name = 'Mykola'
  AND user.surname = 'Lysenko';