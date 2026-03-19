create database temp1;
drop database temp1;
create database College;
create database if not exists College;
show databases;
use college;

create table student (
	id int primary key,
    name varchar(50),
    age int not null
);

insert into student values(1, "Khan", 26);
insert into student values(2, "Raja", 23);
insert into student values(3, "Khoso", 24);

show tables;
drop table student;
 
 create table student (
	rollno int primary key,
    name varchar(50)
);

select * from student;

insert into student
(rollno,name)
values
(101, "Khan"),
(102, "Raja"),
(103, "Salman");

create table emp (
	id int,
    salary int default 25000);

insert into emp (id) values (101);
select * from emp;

drop database college;
create database college;
use college;

create table student (
	rollno int primary key,
    name varchar(50),
    marks int not null,
    grade varchar(1),
    city varchar(20)
);

insert into student
(rollno, name, marks, grade, city)
values
(101, "Atif", 78, "C", "Karachi"),
(102, "Aslam", 79, "C", "Hyderabad"),
(103, "Asgraf", 75, "C", "Karachi"),
(104, "Ateeq", 73, "C", "Multan"),
(105, "Arslan", 80, "C", "Peshawar"),
(106, "Ashraf", 82, "C", "Lahore"),
(107, "Anam", 98, "C", "Sibi");

select name, marks from student;
select * from student;
select distinct city from student;
select * from student where marks > 80;
select * from student where city = "Karachi";
select * from student where marks > 70 and city = "Karachi";
select * from student where marks between 80 and 90;
select * from student where city in ("Karachi", "Multan");
select * from student where city not in ("Karachi", "Multan");
select * from student where marks > 70 limit 3;
select * from student order by city asc;
select * from student order by marks desc;
select max(marks) from student;
select count(name) from student;
select avg(marks) from student;
select city, name count(rollno) from student groupby city;































































