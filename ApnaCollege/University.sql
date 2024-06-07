CREATE DATABASE IF NOT EXISTS University; -- creating database
USE University; -- using database

-- creating table
CREATE TABLE Students(
id int primary key,
name varchar(50),
age int not null
);

Insert into Students values( 101 , "VijayPrasad", 25);
insert into students values( 103 , "SagarSuri", 24);
insert into students values( 102 , "Priyanka", 22);

select * from students;
show tables;
drop table students;

create table if not exists Students(
RollNo int primary key,
name varchar(100)
);
insert into students values( 1001 , "Vijay Sinha");
insert into students values(1003, "Roshan Chandimeshram");
insert into students values(1002, "Kishor Chandimeshram");

insert into students ( rollno , name) values (1006 , "Tanmay"), (1007, "Raghav") , (1005, "Mahesh");

show tables;
select * from students;