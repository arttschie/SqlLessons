select department_id, count(*), min(salary), max(salary), min(hire_date), max(hire_date)
from employees
group by department_id
order by count(*) desc;

select substr(first_name, 1, 1), count(*)
from employees
group by substr(first_name, 1, 1)
having count(*)>1
order by count(*);

select department_id, salary, count(*)
from employees 
group by department_id, salary
having count(*)>1;

select to_char(hire_date, 'Day'), count(*)
from employees
group by to_char(hire_date, 'Day');

select department_id, count(*), sum(salary)
from employees
group by department_id
having count(*)>30 and sum(salary)>30000;

select region_id, sum(length(country_name))
from countries
group by region_id
having sum(length(country_name))>50;

select job_id, avg(salary)
from employees
group by job_id;

select department_id
from employees
group by department_id
having count(distinct job_id)>1;

select department_id, job_id, max(salary), min(salary)
from employees
group by department_id, job_id
having avg(salary)>10000;

select manager_id,  round(avg(salary))
from employees 
where commission_pct is null
group by manager_id
having avg(salary)>=6000 and avg(salary)<=9000;

select round(max(avg(salary)), -3)
from employees
group by department_id
order by round(max(avg(salary)), -3);

select department_id, round(avg(salary)), round(max(salary), -3) 
from employees
group by department_id;