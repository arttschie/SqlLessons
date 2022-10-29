select * from employees;

select * from departments;

select e.salary, e.first_name from employees e;

select employees.salary, employees.first_name from employees;

select * from regions NATURAL JOIN countries;

select country_name, country_id, region_name, region_id
from regions NATURAL JOIN countries;

select c.country_name, c.country_id, r.region_name, region_id
from regions r NATURAL JOIN countries c;

select first_name, last_name, salary, department_name, department_id, manager_id 
from employees natural join departments;

select first_name, last_name, salary, department_name, e.manager_id emp, d.manager_id dep, department_id
from employees e join departments d using (department_id);

select * from regions join countries USING (region_id);

select first_name, last_name, jh.job_id, start_date, end_date 
from employees join job_history jh using (employee_id, department_id);



