CREATE DATABASE IF NOT EXISTS school1;
use school1;
CREATE TABLE subject(
   subj_id INT not null auto_increment,
   name VARCHAR(30) NOT NULL ,
   koef float not null,
   PRIMARY KEY (subj_id)
);
CREATE TABLE audithory(
    audyt_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    seats INT NOT NULL,
    PRIMARY KEY (audyt_id),
    subject_id INT NOT NULL UNIQUE,
    FOREIGN KEY(subject_id) REFERENCES subject(subj_id)
);
CREATE TABLE teacher(
    teach_id INT NOT NULL AUTO_INCREMENT,
    namename VARCHAR(30) NOT NULL,
    date_of_birth date not null,
    PRIMARY KEY (teach_id),
    subject_id INT NOT NULL,
    FOREIGN KEY (subject_id) REFERENCES subject(subj_id)
);
CREATE TABLE student(
    stud_id INT NOT NULL AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL ,
    dateOfBirth date not null ,
    class VARCHAR(7),
    PRIMARY KEY (stud_id)
);
CREATE TABLE teach_stud(
    Teach_id INT NOT NULL ,
    Stud_id INT NOT NULL ,
    CONSTRAINT id PRIMARY KEY (Stud_id,Teach_id),
    FOREIGN KEY (Stud_id) REFERENCES student(stud_id),
    FOREIGN KEY (Teach_id) REFERENCES teacher(teach_id)
);
INSERT INTO subject(name, koef)
VALUES
    ('Математика', 0.4),
    ('Фізика',0.3),
    ('Хімія',0.1),
    ('Фізкультура', 0.2);
INSERT INTO audithory(name, seats, subject_id)
VALUES
    ('Математичний клас',30, 1),
    ('Фізичний клас',35,2),
    ('Хімічний клас',29,3),
    ('Спортзал',50,4);

INSERT INTO student(name, dateOfBirth, class)
VALUES
    ('Ігор','2010-11-23',11),
    ('Аня','2010-06-03',12),
    ('Саша','2010-08-25',10),
    ('Василь','2010-04-16',9),
    ('Женя','2010-02-01',10);

INSERT INTO teacher(namename, date_of_birth, subject_id)
VALUES
    ('Олександр Олександрович','1974-09-11', 1),
    ('Василь Васильович','1980-04-24', 1),
    ('Микола Іванович', '1970-07-19',2),
    ('Ольга Іванівна','1996-04-14',3),
    ('Юрій Євгенійович', '1970-03-02',4),
    ('Марія Петрівна', '1986-09-11',4);

INSERT INTO teach_stud(teach_id, stud_id)
VALUES
    (1, 2),
    (2, 1),
    (2, 3),
    (3, 4),
    (5, 5),
    (6, 5);

# Вивести всіх вчителів, які народилися пізніше ніж 1980 рік.
SELECT * FROM teacher WHERE date_of_birth> '1980-01-01';
# 2) Вивести всіх учнів, в яких ім’я НЕ починається на B.
SELECT * FROM student WHERE NOT name like 'B%';
# 3) Відсортувати предмети за koef .
SELECT * FROM subject ORDER BY koef;
# 4) Вивести всю інформацію про найстаршого вчителя.
SELECT * FROM teacher WHERE date_of_birth IN ( SELECT MIN(date_of_birth) FROM teacher);
#  5) Вивести скільки аудиторій є у школі.
SELECT COUNT(audyt_id) FROM audithory;
# 6) Вивести загальну кількість місць у всіх аудиторіях в школі.
SELECT SUM(seats) FROM audithory;
# 7) Вивести всіх учнів, які народилися у році від 2000 до 2005.
SELECT * FROM student WHERE dateOfBirth between '01-01 2000' and '01-01-2005';
# 8) Перейменувати полеname утаблиці Вчитель наteacher_name
ALTER TABLE teacher rename column teacher_name to namename;
# 9) Вивести всіх вчителів, які викладають математику
SELECT * FROM teacher INNER JOIN subject s on teacher.subject_id = s.subj_id
WHERE s.name = 'Математика';
#  10) Вивести всіх учнів, яких вчить вчитель “Олександр Олександрович”
SELECT student.name FROM student INNER JOIN teach_stud ts on student.stud_id = ts.Stud_id
    INNER JOIN teacher on student.stud_id = teacher.teach_id
WHERE teacher.namename = 'Олександр Олександрович';
# 11) Вивести всіх вчителів, які вчать “Петра”
SELECT namename FROM teacher INNER JOIN teach_stud ts on teacher.teach_id = ts.Teach_id
    INNER JOIN student on student.stud_id = teacher.teach_id
WHERE student.name = 'Petro';
# 12) Вивести аудиторію, у якій викладають математику.
SELECT * FROM audithory INNER JOIN subject s on audithory.subject_id = s.subj_id
WHERE s.name='Математика';
# 13) Вивести аудиторію в якій викладає вчитель “Марія Петрівна”.
SELECT audithory.name FROM audithory INNER JOIN subject s on audithory.subject_id = s.subj_id
    INNER JOIN teacher t on audithory.subject_id = t.subject_id
WHERE t.namename = 'Марія Петрівна';
# 14) Вивести вчителі, який викладає у аудиторії для хімії.
SELECT teacher.namename FROM teacher INNER JOIN subject ON teacher.subject_id = subject.subj_id
    INNER JOIN audithory a on subject.subj_id = a.subject_id
WHERE a.name = 'Хімічний клас';





