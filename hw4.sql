select * from employees where instr(lower(first_name), 'b')>0;
select * from employees where instr(lower(first_name), 'a', 1, 2)>0;
select substr(department_name, 1, instr(department_name, ' ')) from departments where instr(department_name, ' ')>0; 
select substr(first_name, 2, length(first_name)-2) name from employees;
select * from employees 
where length(substr(job_id, instr(job_id, '_')+1))>=3 
and substr(job_id, instr(job_id, '_')+1) not like 'CLERK';
select * from employees where to_char(hire_date, 'dd') like '01';
select hire_date, to_char(hire_date, 'YYYY') from employees where to_char(hire_date, 'YYYY')='2000';
select 'Tomorrow is the ' || to_char(next_day(sysdate, 1), 'Ddspth') || ' day of ' || to_char(sysdate, 'Month') from dual;
select first_name, hire_date, to_char(hire_date, 'fmDDth "of" month, YYYY') from employees;
select salary, to_char(salary*1.2, '$99,999.99') from employees;
select sysdate, 
sysdate + 1/(24*60*60) "+sec",
sysdate + 1/(24*60) "+min",
sysdate + 1/24 "+hour",
sysdate + 1 "+day",
add_months(sysdate, 1) "+month",
add_months(sysdate, 12) "+year"
from dual;
select salary, salary+to_number('$12,345.55', '$99,999.99') as new_salary from employees;
select first_name, hire_date, months_between(to_date('SEP, 18:45:00 18 2009', 'MON, hh24:mi:ss DD YYYY'), hire_date) Months_work from employees;
select first_name, salary, nvl(to_char(salary+(salary*commission_pct), '$99,999.99'), to_char(salary, '$99,999.99')) from employees;
select first_name, last_name, nvl2(nullif(length(first_name), length(last_name)), 'different length', 'same length') from employees;
select first_name, commission_pct, nvl2(commission_pct, 'Yes', 'No') "Has bonus" from employees;
select first_name, coalesce(commission_pct, manager_id, salary) from employees;
select first_name, manager_id, salary,
case
when commission_pct is not null then commission_pct
when commission_pct is null then nvl(manager_id, salary)
end
as "Info"
from employees;
select first_name, salary,
case 
when salary<5000 then 'Low level'
when (salary>=5000 and salary<10000) then 'Normal level'
when salary>=10000 then 'High level'
end
as "Level of salary"
from employees;
select country_name, decode(region_id, '1', 'Europe', '2', 'America', '3', 'Asia', '4', 'Africa') 
from countries;
select country_name,
case region_id
when 1 then 'Europe'
when 2 then 'America'
when 3 then 'Asia'
when 4 then 'Africa'
end
as "info"
from countries;
select first_name, salary, commission_pct, 
case
when salary<10000 and commission_pct is null then 'BAD'
when salary>=10000 and salary<=15000 or commission_pct is not null then 'NORMAL'
when salary>=15000 then 'GOOD'
else 'unknown'
end
as Situation
from employees;