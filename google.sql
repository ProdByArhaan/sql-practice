show databases;
create database google123;
use google123;
select database();
create table whatsapp(s_no varchar(10),
First_Name varchar(50) not null,
Last_Name varchar(50),
phone_number int not null primary key, subscriber varchar(10) default 'N/A');
drop table whatsapp;
desc whatsapp;
alter table whatsapp add calling varchar(5);
alter table whatsapp add pg int;
select * from whatsapp;
alter table whatsapp drop pg;
alter table whatsapp modify column calling int;
insert into whatsapp values (1,'a','b',1234512345,'yes',0),
(2,'c','d',246872364,'no',1);
select First_name from whatsapp;
select phone_number from whatsapp;
select calling,s_no from whatsapp;
select * from whatsapp limit 1 offset 1;
select * from whatsapp;