-- Create the database
CREATE DATABASE PracQue;
USE PracQue;

-- Create the student table
CREATE TABLE student (
    student_id INT PRIMARY KEY,
    name VARCHAR(70)
);

-- Insert data into the student table
INSERT INTO student (student_id, name) VALUES
(101, 'Adam'),
(102, 'Bob'),
(103, 'Casey');

-- Create the course table
CREATE TABLE course (
    student_id INT PRIMARY KEY,
    course VARCHAR(80)
);

-- Insert data into the course table
INSERT INTO course (student_id, course) VALUES 
(102, 'English'),
(105, 'Math'),
(103, 'Science'),
(107, 'Computer Science');

-- Select query with corrected join condition
SELECT * 
FROM student
INNER JOIN course
ON student.student_id = course.student_id; -- join the common data

SELECT *
FROM student AS a
LEFT JOIN course AS b
ON a.student_id = b.student_id;

