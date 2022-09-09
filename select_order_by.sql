select first_name, salary from employees order by salary;
select * from employees where job_id = 'IT_PROG' order by salary;
select first_name, salary, hire_date from employees where job_id = 'IT_PROG' order by hire_date desc;
select last_name, salary, hire_date, hire_date+salary+2 expr
from employees
where employee_id>120
order by expr;
select * from employees order by commission_pct nulls first;

select first_name, salary from employees order by 1;
select * from employees order by 1 desc;
select job_id, first_name, last_name, salary, hire_date
from employees
order by job_id desc, last_name, 4 desc;