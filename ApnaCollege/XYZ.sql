create database if not exists xyz;
use xyz;
create table employee(
id int primary key,
name varchar(50),
salary int not null
);

insert into employee( id , name , salary) values (1 , "Ranchod" , 15000), (2 , "Pravin", 30000), (3 , "Prajapati", 40000);

select * from employee;

create table parichit(
villege varchar(20)
);
drop table parichit;