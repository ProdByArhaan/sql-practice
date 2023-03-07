use school;
create table employee
(emp_ID int,emp_NAME varchar(50),DEPT_NAME varchar(50),SALARY int);
insert into employee values(101, 'Mohan', 'Admin', 4000);
insert into employee values
(102, 'Rajkumar', 'HR', 3000),
(103, 'Akbar', 'IT', 4000),
(104, 'Dorvin', 'Finance', 6500),
(105, 'Rohit', 'HR', 3000),(106, 'Rajesh',  'Finance', 5000),
(107, 'Preet', 'HR', 7000),
(108, 'Maryam', 'Admin', 4000),
(109, 'Sanjay', 'IT', 6500),
(110, 'Vasudha', 'IT', 7000),
(111, 'Melinda', 'IT', 8000),
(112, 'Komal', 'IT', 10000),
(113, 'Gautham', 'Admin', 2000),
(114, 'Manisha', 'HR', 3000),
(115, 'Chandni', 'IT', 4500),
(116, 'Satya', 'Finance', 6500),
(117, 'Adarsh', 'HR', 3500),
(118, 'Tejaswi', 'Finance', 5500),
(119, 'Cory', 'HR', 8000),
(120, 'Monica', 'Admin', 5000),
(121, 'Rosalin', 'IT', 6000),
(122, 'Ibrahim', 'IT', 8000),
(123, 'Vikram', 'IT', 8000),
(124, 'Dheeraj', 'IT', 11000);
select * from employee;
select max(salary) as 'max salary' from employee;
select emp_NAME from (select max(salary),DEPT_NAME as 'max salary' from employee group by DEPT_NAME);

select e.*, max(salary) over(partition by DEPT_NAME) as 'max salary'
from employee as e;

select e.*, row_number() over(partition by DEPT_NAME) as 'row number'
from employee as e;

select * from
(select e.*, row_number() over(partition by DEPT_NAME order by emp_ID) as rn
from employee as e) as x
where x.rn<3;

select * from
(select e.*, dense_rank() over(partition by DEPT_NAME order by SALARY desc) as rnk
from employee as e) as x
where x.rnk<4;

select * from
(select e.*, rank() over(partition by DEPT_NAME order by SALARY desc) as rnk
from employee as e) as x
where x.rnk<4;

select e.*, dense_rank() over(partition by DEPT_NAME order by SALARY desc) as rnk
from employee as e;

select e.*,
lag(salary) over(partition by DEPT_NAME order by emp_ID) as prev_emp_sal,
case
when e.salary>lag(salary) over(partition by DEPT_NAME order by emp_ID) then 'Higher'
when e.salary<lag(salary) over(partition by DEPT_NAME order by emp_ID) then 'Lower'
when e.salary=lag(salary) over(partition by DEPT_NAME order by emp_ID) then 'Same'
-- else 'Same'
end as sal_range
from employee e;

select e.*,
lag(salary) over(partition by DEPT_NAME order by emp_ID) as prev_emp_sal
from employee e;

select e.*,
lag(salary) over(partition by DEPT_NAME order by emp_ID) as prev_emp_sal,
lead(salary) over(partition by DEPT_NAME order by emp_ID) as next_emp_sal
from employee e;

