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

# Вивести всіх вчителів, які народилися пізніше ніж 1980 рік.
SELECT * FROM teacher WHERE date_of_birth>'01-01-1980';
# 2) Вивести всіх учнів, в яких ім’я НЕ починається на B.
SELECT * FROM student WHERE NOT name like 'B%';
# 3) Відсортувати предмети за koef .
SELECT * FROM subject ORDER BY koef;
# 4) Вивести всю інформацію про найстаршого вчителя.
SELECT MAX(date_of_birth) FROM teacher;
#  5) Вивести скільки аудиторій є у школі.
SELECT COUNT(audyt_id) FROM audithory;
# 6) Вивести загальну кількість місць у всіх аудиторіях в школі.
SELECT SUM(seats) FROM audithory;
# 7) Вивести всіх учнів, які народилися у році від 2000 до 2005.
SELECT * FROM student WHERE dateOfBirth between '01-01 2000' and '01-01-2005';
# 8) Перейменувати полеname утаблиці Вчитель наteacher_name
ALTER TABLE teacher rename column namename to teacher_name;
# 9) Вивести всіх вчителів, які викладають фізику 10) Вивести всіх учнів, яких вчить вчитель “Ольга Миколаївна”
SELECT * FROM teacher INNER JOIN subject s on teacher.subject_id = s.subj_id
WHERE s.name = 'Phisic';
#  10) Вивести всіх учнів, яких вчить вчитель “Ольга Миколаївна”
SELECT student.name FROM student INNER JOIN teach_stud ts on student.stud_id = ts.Stud_id
    INNER JOIN teacher on student.stud_id = teacher.teach_id
WHERE teacher.namename = 'OlehBas';
# 11) Вивести всіх вчителів, які вчать “Петра”
SELECT namename FROM teacher INNER JOIN teach_stud ts on teacher.teach_id = ts.Teach_id
    INNER JOIN student on student.stud_id = teacher.teach_id
WHERE student.name = 'IgorI';
# 12) Вивести аудиторію, у якій викладають біологію.
SELECT * FROM audithory INNER JOIN subject s on audithory.subject_id = s.subj_id
WHERE s.name='biology';
# 13) Вивести аудиторію в якій викладає вчитель “Дмитро Богданович”.
SELECT audithory.name FROM audithory INNER JOIN subject s on audithory.subject_id = s.subj_id
    INNER JOIN teacher t on audithory.subject_id = t.subject_id
WHERE t.namename = 'OlehBas';
# 14) Вивести вчителі, який викладає у аудиторії для хімії.
SELECT teacher.namename FROM teacher INNER JOIN subject ON teacher.subject_id = subject.subject_id
    INNER JOIN audithory a on subject.subj_id = a.subject_id
WHERE a.name = 'Хімічний клас';





