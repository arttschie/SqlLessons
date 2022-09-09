select * from employees;
select * from employees where first_name = 'Steven';
select * from employees where first_name like 'St%';
select * from employees where first_name like 'D_n';
select * from employees where first_name like 'A%d%';
select * from employees where first_name like '__n%';
select * from employees where job_id like 'ST\_%' escape '\';


