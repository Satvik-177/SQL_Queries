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

CREATE TABLE department (
    
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

INSERT INTO department
VALUES
(101,"English"),
(102,"Science");

SELECT * FROM department;

UPDATE department
SET id = 103
WHERE id = 101;

CREATE TABLE teacher (
     
     id INT PRIMARY KEY,
     name VARCHAR(50),
     department_id INT,
     FOREIGN KEY (department_id) REFERENCES department (id)
     ON UPDATE CASCADE
     ON DELETE CASCADE
);

INSERT INTO teacher 
VALUES
(101,"Hari",101),
(102,"Krishna",102);

SELECT * FROM teacher;


-- "SELECT" DIFFERENT USES

-- SELECT * FROM student;
-- SELECT name,marks FROM student;
-- SELECT DISTINCT city FROM student;

-- "WHERE" clause use

-- SELECT name FROM student WHERE (city = "Mumbai" OR marks>90);
-- SELECT name FROM student WHERE (city = "Delhi" AND marks>90);
-- SELECT * FROM student WHERE (city="Delhi");

-- "OPERATORS" use
-- SELECT * FROM student WHERE marks-10 < 80;    -- similarly other operators like +,-,*,/,%,AND,OR,NOT,IN,LIKE,BETWEEN,ANY,ALL&,|,>=,<=,!=,=
-- SELECT * from student where marks BETWEEN 80 AND 100;
-- SELECT * FROM student where city NOT IN ("Delhi","Mumbai");
-- SELECT * FROM student where city IN ("Pune","Mumbai");

-- "LIMIT" Clause

-- SELECT * FROM student where marks>80 LIMIT 2;

-- "ORDER BY" CLAUSE

-- Select * FROM student ORDER BY marks;
-- Select * FROM student ORDER BY city;
-- Select * FROM student ORDER BY marks DESC;
-- Select * FROM student ORDER BY marks DESC LIMIT 3;

-- Aggregate functions
-- SELECT MAX(marks) FROM student;
-- SELECT MIN(marks) FROM student;
-- SELECT AVG(marks) FROM student;
-- SELECT COUNT(rollno) FROM student;
-- SELECT SUM(marks) FROM student;

-- "GROUP BY" clause

-- SELECT city,count(rollno) 
-- from student 
-- GROUP BY (city); 

-- SELECT city,avg(marks) 
-- from student 
-- GROUP BY (city); 

-- Practice
-- SELECT city,AVG(marks)
-- from student 
-- GROUP BY city
-- ORDER BY AVG(marks);
-- ORDER BY city;

-- PRACTICE

-- SELECT grade,Count(rollno)
-- FROM student
-- GROUP BY grade
-- ORDER BY grade;

-- PRACTICE

-- SELECT city,COUNT(rollno)
-- FROM student
-- GROUP BY(city)
-- HAVING MAX(marks) > 90 

-- GENERAL ORDER

-- SELECT city 
-- FROM student
-- WHERE grade = "A"
-- GROUP BY city
-- -- HAVING MAX(marks) > 94
-- HAVING MAX(marks)>=93
-- ORDER BY city

-- UPDATE / SET / WHERE

SET SQL_SAFE_UPDATES = 0;

-- UPDATE student
-- SET grade = "O"
-- WHERE grade = "A";

-- UPDATE student
-- SET marks = 92
-- WHERE marks = 12;

-- SELECT * from student

-- UPDATE student
-- SET grade = "B"
-- WHERE marks BETWEEN 80 AND 90;

-- SELECT * from student;

-- UPDATE student
-- SET marks = marks+1;

-- UPDATE student
-- SET marks = 12
-- WHERE marks = 83;

-- DELETE FROM student
-- WHERE marks < 33;

-- SELECT * FROM student;

DROP DATABASE college;


