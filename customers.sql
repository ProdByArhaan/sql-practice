create database mydb;
use mydb;
show tables;
drop database mydb;
create table salesman(salesman_id int unique primary key,name varchar(50),city varchar (50), commision int);
desc salesman;
select * from salesman;
alter table salesman add state varchar(100);
select * from salesman;
drop table salesman;
insert into salesman (salesman_id,name,city,commision) values(5001,"James Hoog", "New York", 15);
insert into salesman values (5002,"Nail Knite", "Paris", 13);
update salesman set commision=16 where salesman_id=5002;
delete from salesman where salesman_id=5002;
truncate table salesman;
create table salesman (id int not null auto_increment primary key,
 salesmanid int, name varchar(100), city varchar(100),commision int);
desc salesman;
insert into salesman (salesmanid,name,city,commision) values (5001,"James Hoog", "New York", 15);
insert into salesman (salesmanid,name,city,commision) values (5002,"Nail Knite", "Paris", 13);
select * from salesman;
create table salesman (salesmanid int primary key,
 name varchar(100),city varchar(100),commision int);
create table customer
(customerid int primary key,custname varchar(100),
city varchar(100),grade int,first_purchase date,salesmanid int,
foreign key(salesmanid) references salesman(salesmanid));
insert into salesman 
(salesmanid,name,city,commision) VALUES (5001,"James Hoog", "New York", 15);
insert into salesman
(salesmanid,name,city,commision) VALUES (5002,"Nail Knite", "Paris", 13);
insert into salesman
(salesmanid,name,city,commision) VALUES (5005,"Pit Alex", "London", 11);
insert into salesman
(salesmanid,name,city,commision) VALUES (5006,"Mc Lyon", "Paris", 14);
insert into salesman
(salesmanid,name,city,commision) VALUES (5007,"Paul Adam", "Rome", 13);
insert into salesman
(salesmanid,name,city,commision) VALUES (5003,"Lauson Hen", "San Jose", 12);

insert into customer
VALUES (3002,"Nick Rimando", "New York", 100,'2020-12-17', 5001);
insert into customer
VALUES (3007, "BradDavis", "New York", 200,'2020-11-10', 5001);
insert into customer
values (3005,"Graham Zusi", "California", 200,'2020-10-19', 5002),
(3004,"Fabian Johnson", "Paris", 300,'2020-06-07', 5006),
(3009,"Geoff Cameron", "Berlin", 100,'2020-12-30', 5003),
(3003, "JozyAltidor", "Moscow", 200,'2020-09-01', 5007),
(3001, "BRAD Guzan", "London", 100,'2020-11-29', 5005),
(3006, "brad Guzan", "London", 100,'2020-06-20', 5005);
select * from salesman;
select * from customer;
select distinct salesmanid from customer;
select * from customer where grade=100;
select distinct salesmanid from customer where grade=100;
select custname,city,grade from customer where grade=100;
select * from customer where grade<>100;
select * from customer where grade!=100;
select * from customer where salesmanid=5005 and customerid=3006;
select * from customer where not grade=200;
select * from customer where salesmanid in (5005,5003,5006);
select * from customer 
where salesmanid=any(select salesmanid from salesman where commision=13);
select * from salesman
where salesmanid=all(select salesmanid from salesman);


