create database college;
use college;

create table student(
rollno int primary key,
name varchar(50),
marks int not null,
grade varchar(10),
city varchar(20)
);

create table dept(
id int primary key,
name varchar(50)
);
create table teacher(
id int primary key,
name varchar(50),
dept_id Int,
foreign key (dept_id) references dept(id)
);

insert into student
(rollno, name , marks, grade, city)
values 
(101 , "Anil" , 78 , "C" , "Nagpur"),
(103 , "Tejas", 80 , "A" , "Mumbai"),
(102 , "Sagar" , 90 , "A", "Rajkot"),
(104 , "Pallavi", 75, "D", "Nagpur"),
(105 , "Praniti" , 50 , "F", "Mumbai");



select * from student; -- selecting all

select city from student; -- selecting with city

select distinct city from student; -- not repeating city name if have repeat city on the table

select * from student where marks > 80; -- only appear who the students have marks above 80

select * from student where city = "mumbai"; -- only appear who are the students from mumbai

select * from student where marks > 70 and city = "mumbai"; -- appearing who the gain above 70 marks and city from mumbai

insert into student
(rollno, name , marks, grade, city)
values
(106 , "Vidya", 35 , "D" , "Nagpur"),
(107 , "Rinku", 44 , "D" , "Nagpur"),
(108 , "Bhagat", 96 , "A" , "Bhandara"),
(109 , "Roshani", 98 , "A" , "Mumbai"),
(110 , "Krishna", 12 , "E" , "Nagpur");

select * from student
order by city ASC; -- city wise list of students.

Select city , name, count(name)
from student 
group by city , name; -- group by city and name with count

Select city , name, avg(marks)
from student
group by city , name; 

select grade, name
from student
group by grade , name
order by grade;  -- select student by grade with name and asending order.

select city, count(rollno)
from student
group by city
having max(marks) > 90; -- selecting student from having max marks above 90;

-- general Order --
-- SELECT column(s)
-- from table_name
-- Where condition
-- group by column(s)
-- having condition
-- Order by column(s) ASC;

SET SQL_SAFE_Updates = 0;

Update student
Set grade = "O"
where grade = "A";  -- updating grade A to O.

Update student
Set marks = "80"
where rollno = "105"; -- who have rollno 105 to set marks 80

update Student
SET grade = "B"
where marks between 75 and 80; -- update grade who have gain marks between 75 to 80

update student
set marks = marks + 1;

delete from student
where marks < 33;  -- deleting the student who have below the marks of 33.

Alter table stu
rename to students;  -- rename the table stu to students.

alter table students
change name full_Name varchar(70); -- rename the name to full_Name 

delete from students
where marks < 70;   -- delete the students who have less than 70 marks.

alter table students
drop column grade;  -- delete the grade column.



Select * from students;