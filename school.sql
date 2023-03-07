show databases;
create database school;
use school;
create table school(name varchar(50), roll_no int);
alter table school add class int;
alter table school add age varchar(50);
alter table school modify column age int;
insert into school (roll_no,name,age,class) values 
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3, 'jatin', 14, 8),
(4, 'shweta', 19,12),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit', 13, 8);
select * from school;
insert into school (class,age) values (11,16),(12,17),(10,15);
drop table school;
create table student
(id int not null unique, name varchar (50) not null, age int not null, class int not null);
insert into student
(id, name, age, class)
values
(1, 'mohit', 18, 12),
(2, 'rohit', 17, 11),
(3, 'jatin', 14, 8),
(4, 'shweta', 19,12),
(5, 'prateek', 14, 8),
(6, 'vishnu', 12, 7),
(7, 'mahesh', 17, 10),
(8, 'aparna', 16, 11),
(9, 'jatin', 17, 11),
(10, 'rohit', 13, 8);
select * from student;
update student set name='ronit', age='19' where id=10;
update student set class=12 where id=10;
select count(distinct name) from student;
select count(distinct name) as 'unique names' from student;
select class,count(name) from student group by class having count(name)>2;
select count(name) from student group by class;
create table marks
(id int not null,
subject varchar(20) not null,
marks int not null,
primary key(id,subject));
desc marks;
insert into marks values
(9, 'maths', 89),
(2, 'english', 75),
(1, 'maths', 91),
(4, 'science', 97),
(10, 'computer', 83),
(1, 'english', 55),
(3, 'maths', 58);
select * from marks;




