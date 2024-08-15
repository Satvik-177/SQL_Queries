CREATE DATABASE college;
USE college;

CREATE TABLE student(

    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT NOT NULL,
    grade VARCHAR(1),
    city VARCHAR(50)
);

INSERT INTO student
(rollno,name,marks,grade,city)
VALUES
(101,"anil",78,"C","Pune"),
(102,"bhumika",93,"A","Mumbai"),
(103,"chetan",85,"B","Mumbai"),
(104,"dhruv",96,"A","Delhi"),
(105,"emanue",12,"F","Delhi"),
(106,"farah",82,"B","Delhi");

ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

ALTER TABLE student
MODIFY COLUMN age VARCHAR(2);

ALTER TABLE student
CHANGE age stu_age INT;

INSERT INTO student
(rollno, name, marks, stu_age)
VALUES
(107,"gargi",68,100);

ALTER TABLE student
DROP COLUMN stu_age;

-- ALTER TABLE student        --Rename the table
-- RENAME TO stu;

TRUNCATE TABLE student;   -- It deletes all the data of the table but still the table exists but DROP deletes the entire table

SELECT * FROM student;
