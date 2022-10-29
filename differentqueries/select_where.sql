select * from employees;

select first_name, last_name from employees where salary = 17000;

select first_name, salary from employees where last_name = 'King';

select * from employees where hire_date='17.06.87';

select * from departments where location_id = 1919;

select * from employees where employee_id = manager_id+1000/10+1;

select * from job_history where job_id='ST_CLERK';

select * from employees where 'Dr David Austin' = 'Dr '||first_name||' '||last_name;

select * from job_history where start_date+364 = end_date;

