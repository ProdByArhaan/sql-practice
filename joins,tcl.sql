use school;
desc student;
desc marks;
select student.id,name,class,subject,marks 
from student 
right join marks 
on student.id=marks.id;

select student.id,name,class,subject,marks 
from student 
left join marks 
on student.id=marks.id;

select student.id,name,class,subject,marks 
from student 
inner join marks 
on student.id=marks.id;

select student.id,name,class,subject,marks 
from student 
left join marks 
on student.id=marks.id
union
select student.id,name,class,subject,marks 
from student 
right join marks 
on student.id=marks.id;

create user 'abc'@'localhost' identified by 'abc@123';
grant select on school.* to 'abc'@'localhost';
show grants for 'abc'@'localhost';
flush privileges;
revoke select on school.* from 'abc'@'localhost';
drop user 'abc'@'localhost';
