select first_name, last_name, salary from employees where salary>employee_id+5000;
select * from employees where first_name>'Steven';
select * from job_history where start_date<'01.01.05';
select first_name, last_name, salary from employees where salary between 4000 and 10000;
select * from departments where location_id in (1700, 2400, 1500);
select * from job_history where job_id in ('IT_PROG', 'ST_CLERK');
select * from departments where location_id=1700 or location_id=2400 or location_id=1500;
select * from employees where commission_pct is null; 