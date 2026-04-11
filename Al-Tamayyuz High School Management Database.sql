Create database education;

USE education;

-- create tables:

create table teachers (
 ID int primary key auto_increment,
 T_Name varchar(225),
 T_Birth DATE,
 T_Gender enum("M","F"),
 T_Email varchar(100),
 T_Office_id INT
);

create table Students (
 ID int primary key auto_increment,
 S_Name varchar(225),
 S_Birth DATE,
 S_Gender enum("M","F"),
 S_App_Date date,
 S_Email varchar(100),
 S_Level ENUM("1","2","3","4","5","6"),
 S_Course enum("scientific", "humanitarian"),
 S_GPA decimal(3,2)
);

create table Subject (
 ID int primary key auto_increment,
 Sub_Name varchar(225)
);

-- show tables:

SHOW TABLES;

-- insert into students

insert into students(S_Name, S_Birth, S_Gender, S_App_Date, S_Email, S_Level, S_Course, S_GPA)
values ('Mohamed','2004-01-04','M','2014-01-04','mohamed@gmail.com','6','humanitarian',3.57),
('Ahmed','2003-05-12','M','2015-09-10','ahmed01@gmail.com','1','scientific',2.45),
('Sara','2002-11-03','F','2014-08-21','sara02@gmail.com','2','humanitarian',3.12),
('Omar','2004-01-18','M','2016-02-14','omar03@gmail.com','3','scientific',1.98),
('Mona','2001-07-25','F','2013-11-30','mona04@gmail.com','4','humanitarian',2.76),
('Youssef','2005-09-09','M','2017-05-05','youssef05@gmail.com','5','scientific',3.88),
('Nour','2003-03-14','F','2015-01-01','nour06@gmail.com','6','humanitarian',2.34),
('Ali','2002-02-20','M','2014-04-18','ali07@gmail.com','1','scientific',1.67),
('Hana','2004-12-01','F','2016-09-09','hana08@gmail.com','2','humanitarian',3.91),
('Khaled','2001-10-10','M','2013-06-22','khaled09@gmail.com','3','scientific',2.58),
('Laila','2005-06-06','F','2017-03-17','laila10@gmail.com','4','humanitarian',3.05),
('Tamer','2003-08-08','M','2015-12-12','tamer11@gmail.com','5','scientific',1.73),
('Fatma','2002-09-19','F','2014-10-10','fatma12@gmail.com','6','humanitarian',2.99),
('Hassan','2004-04-04','M','2016-01-25','hassan13@gmail.com','1','scientific',3.41),
('Salma','2001-01-30','F','2013-07-07','salma14@gmail.com','2','humanitarian',2.11),
('Ibrahim','2005-11-11','M','2017-08-08','ibrahim15@gmail.com','3','scientific',3.67),
('Rana','2003-02-02','F','2015-05-15','rana16@gmail.com','4','humanitarian',1.92),
('Mahmoud','2002-06-06','M','2014-03-03','mahmoud17@gmail.com','5','scientific',2.83),
('Reem','2004-07-07','F','2016-10-10','reem18@gmail.com','6','humanitarian',3.25),
('Mostafa','2001-12-12','M','2013-09-09','mostafa19@gmail.com','1','scientific',2.14),
('Jana','2005-05-05','F','2017-01-20','jana20@gmail.com','2','humanitarian',3.78),
('Adel','2003-03-03','M','2015-06-06','adel21@gmail.com','3','scientific',1.55),
('Dina','2002-10-10','F','2014-02-02','dina22@gmail.com','4','humanitarian',2.67),
('Samy','2004-08-18','M','2016-04-04','samy23@gmail.com','5','scientific',3.19),
('Noha','2001-09-09','F','2013-12-12','noha24@gmail.com','6','humanitarian',2.48),
('Ayman','2005-04-14','M','2017-07-07','ayman25@gmail.com','1','scientific',3.93),
('Esraa','2003-01-01','F','2015-03-03','esraa26@gmail.com','2','humanitarian',1.88),
('Ziad','2002-05-05','M','2014-11-11','ziad27@gmail.com','3','scientific',2.36),
('Marwa','2004-09-09','F','2016-06-06','marwa28@gmail.com','4','humanitarian',3.14),
('Karim','2001-03-21','M','2013-05-05','karim29@gmail.com','5','scientific',2.71)
;

-- insert into teachers

insert into teachers(T_Name, T_Birth, T_Gender, T_Email, T_Office_id)
values ("Mr.Karim",'1992-02-12','M','karim@gmail.com',12),
("Mr.Ahmed",'1990-05-14','M','ahmed@gmail.com',3),
("Ms.Sara",'1995-11-02','F','sara@gmail.com',6),
("Mr.Omar",'1988-08-21','M','omar@gmail.com',1),
("Ms.Mona",'1993-03-09','F','mona@gmail.com',7),
("Mr.Youssef",'1991-12-30','M','youssef@gmail.com',4),
("Ms.Nour",'1996-07-17','F','nour@gmail.com',2),
("Mr.Khaled",'1989-01-25','M','khaled@gmail.com',5),
("Ms.Laila",'1994-09-10','F','laila@gmail.com',1),
("Mr.Ali",'1992-04-06','M','ali@gmail.com',6)
;

-- insert into subject

insert into subject(Sub_Name)
values ("math"),
("physics"),
("chemistry"),
("biology"),
("statistics"),
("computer_science")
;

-- show tables:

Select * from students;
Select * from subject;
Select * from teachers;

-- show + order students by S_name

select * from Students order by S_name ASC;


-- alias

Select ID as "Student ID",
S_name as "Student name",
S_birth as "Birthday",
S_Gender as "Gender",
S_APP_date as "Application date",
S_Email as "Email",
S_Level as "current level",
S_Course as "course",
S_GPA as "GPA"
 from students;

-- update student email val

update students set S_email = 'mohamedayman1@gmail.com'
where id = 1 ;
select * from students;

-- update teacher office id val

update teachers set T_Office_id = 5
where id = 3;
select * from teachers;

-- rename table
alter table subject rename to subjects;

-- create a new table contains Outstanding_Students
create table Outstanding_Students select * from Students where S_GPA>3.5;
select * from Outstanding_Students;

-- create a new table contains Failing_Students
create table Failing_Students select * from Students where S_GPA<2.0;
select * from Failing_Students;

-- show student names that start with A
select * from students where S_Name like 'A%';

-- show student names that contain 4 char
select * from students where S_name like '____';

-- apply avg, min, max -> GPA
select Avg(S_GPA) as 'avg gpa across students' from students ;
select min(S_GPA) as 'min gpa across students' from students ;
select max(S_GPA) as 'max gpa across students' from students ;

-- show Outstanding_Students that has GPA>3.5 in level 6
select * from Outstanding_Students where S_GPA>3.5 and S_level=6;

-- show students that in level 5 and 25-26 years old
select * from students where s_level=5 and year(curdate()) - year(S_birth) between 25 and 26;

-- show count of students that in level 2
select count(ID) from students where S_Level=2;

-- show unique courses
select Distinct S_course from Students;

-- show subject names in upper case
select upper(Sub_name) from Subjects;

-- show avg gpa and Round the number to the nearest smaller number using numeric functions
select floor(avg(S_GPA)) from students;

-- update S_gender val to Male and Female 
SET SQL_SAFE_UPDATES = 0;
update students set S_Gender = 'Male' where S_Gender = 'M';
-- error: S_Gender data type was varchar(1) .. solved:
alter table students modify s_gender varchar(20);
update students set S_Gender = 'Male' where S_Gender = '';
select * from students;

update Students set S_gender = 'Female' where S_gender='F';
Select * from Students;

-- increse failing_students gpa by 0.5
update failing_students set S_GPA= s_gpa + 0.5;
select S_GPA from failing_students;

Select * from students;
Select * from subjects;
Select * from teachers;
