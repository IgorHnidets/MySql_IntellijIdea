CREATE DATABASE  IF NOT EXISTS school;
USE school;
CREATE TABLE IF NOT EXISTS subject (
                                       subject_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                       subject_name VARCHAR(100) NOT NULL UNIQUE,
    koef FLOAT NOT NULL
    );
CREATE TABLE IF NOT EXISTS room(
                                   room_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                   room_name VARCHAR(100) NOT NULL,
    seats INT NOT NULL,
    subject_id INT NOT NULL UNIQUE,
    FOREIGN KEY(subject_id) REFERENCES subject(subject_id)
    );
CREATE TABLE IF NOT EXISTS teacher (
                                       teacher_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                       teacher_name VARCHAR(100) NOT NULL,
    teacher_date_of_birth DATE NOT NULL,
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(subject_id)
    );
CREATE TABLE IF NOT EXISTS student (
                                       student_id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
                                       student_name VARCHAR(100) NOT NULL,
    student_date_of_birth DATE NOT NULL
    );
CREATE TABLE IF NOT EXISTS teacher_student(
                                              teacher_id INT NOT NULL,
                                              student_id INT NOT NULL,
                                              CONSTRAINT id PRIMARY KEY (teacher_id,student_id),
    FOREIGN KEY (teacher_id) REFERENCES teacher (teacher_id),
    FOREIGN KEY (student_id) REFERENCES student (student_id)
    );
INSERT INTO subject(subject_name, koef)
VALUES
    ('Математика', 0.4),
    ('Фізика',0.3),
    ('Хімія',0.1),
    ('Фізкультура', 0.2);
INSERT INTO room(room_name, seats, subject_id)
VALUES
    ('Математичний клас',30, 1),
    ('Фізичний клас',35,2),
    ('Хімічний клас',29,3),
    ('Спортзал',50,4);

INSERT INTO student(student_name, student_date_of_birth)
VALUES
    ('Ігор','2010-11-23'),
    ('Аня','2010-06-03'),
    ('Саша','2010-08-25'),
    ('Василь','2010-04-16'),
    ('Женя','2010-02-01');

INSERT INTO teacher(teacher_name, teacher_date_of_birth, subject_id)
VALUES
    ('Олександр Олександрович','1974-09-11', 1),
    ('Василь Васильович','1980-04-24', 1),
    ('Микола Іванович', '1970-07-19',2),
    ('Ольга Іванівна','1996-04-14',3),
    ('Юрій Євгенійович', '1970-03-02',4),
    ('Марія Петрівна', '1986-09-11',4);

INSERT INTO teacher_student(teacher_id, student_id)
VALUES
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 4),
    (3, 1),
    (4, 2),
    (4, 4),
    (2, 5),
    (1, 3);