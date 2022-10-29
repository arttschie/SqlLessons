select manager_id  manager_id, to_char(null) job_id, TO_NUMBER(null) department_id, sum(salary) overall_salary 
    from employees group by manager_id
UNION 
select to_number(null), job_id, to_number(null), sum(salary) 
    from employees group by job_id
UNION 
    select to_number(null), to_char(null), department_id, sum(salary) 
from employees group by department_id;

(select department_id from employees where manager_id = 100
minus
select department_id from employees where manager_id = 145)
minus
select department_id from employees where manager_id = 201;

select first_name, last_name, salary 
    from employees 
        where substr(first_name, 2, 1) like 'a'
            and instr(UPPER(last_name), 'S') != 0
UNION
select first_name, last_name, salary 
    from employees 
        where substr(first_name, 2, 1) like 'a'
            and instr(UPPER(last_name), 'S') != 0
                order by salary desc;

select * from locations;

select location_id, postal_code, city from locations
where country_id = 'DE' or country_id = 'IT'
union all
select location_id, postal_code, city from locations where postal_code like  '%9%';

select country_id id, country_name country, region_id region from countries 
where length(country_name) > 8
minus
(select country_id, country_name, c.region_id from countries c
join regions r on (c.region_id = r.region_id) where region_name = 'Europe')
order by country desc;