CREATE DATABASE college;
USE college;

CREATE TABLE student(

     id INT PRIMARY KEY,
     name VARCHAR(50)
);

INSERT INTO student
(id,name)
VALUES
(101,"adam"),
(102,"bob"),
(103,"casey");

-- SELECT * FROM student;

CREATE TABLE course (
    
    id INT PRIMARY KEY,
    course VARCHAR(50)
);

INSERT INTO course
(id,course)
VALUES
(102,"english"),
(105,"math"),
(103,"science"),
(107,"computer science");

-- SELECT * FROM course;
-- INNER JOIN

SELECT *
FROM student
INNER JOIN course
ON student.id = course.id;      -- it is not necessary that the column will always be same like course.id may be like course.course_id

-- ALIASES

SELECT * 
FROM student as s
INNER JOIN course as c
ON s.id = c.id;

SELECT * 
FROM student as s
LEFT JOIN course as c
ON s.id = c.id; 

SELECT * 
FROM student as s
RIGHT JOIN course as c
ON s.id = c.id;

-- FULL JOIN

SELECT * 
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
UNION
SELECT * 
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id;

-- EXCLUSIVE LEFT JOIN
SELECT *
FROM student as a
LEFT JOIN course as b
ON a.id = b.id
WHERE b.id IS NULL;

-- EXCLUSIVE RIGHT JOIN
SELECT *
FROM student as a
RIGHT JOIN course as b
ON a.id = b.id
WHERE a.id IS NULL;

-- SELF JOIN

CREATE TABLE employee (
      
      id INT PRIMARY KEY,
      name VARCHAR(50),
      manager_id INT
);

INSERT INTO employee(id,name,manager_id)
VALUES
(101,"adam",103),
(102,"bob",103),
(103,"casey",103),
(104,"donald",103);

SELECT * FROM employee;

SELECT *
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

SELECT a.name AS manager_id , b.name
FROM employee as a
JOIN employee as b
ON a.id = b.manager_id;

-- UNION / UNION ALL
SELECT name FROM employee     
UNION                                  -- UNION only gives unique values after joining two tables
SELECT name FROM employee;

SELECT name FROM employee     
UNION ALL                                -- UNION ALL also gives us duplicate values after joining two tables
SELECT name FROM employee

