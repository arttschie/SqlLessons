select first_name from employees where length(first_name) >10;
select first_name, salary from employees where mod(salary, 1000)=0;
select phone_number, lpad(phone_number, 3), substr(phone_number, 1, 3) 
from employees 
where phone_number like '___.___.____';
select * from employees where substr(first_name, -1) = 'm' and length(first_name)>5;
select next_day(sysdate, 'Пятница') from dual;
select * from employees 
where months_between(sysdate, hire_date)>150 order by hire_date desc;
select replace(phone_number, '.', '-') from employees;
select upper(first_name), lower(email), initcap(job_id) 
from employees;
select concat(first_name, salary) from employees;
select round(hire_date, 'MM'), trunc(hire_date, 'YYYY') from employees;
select rpad(first_name, 10, '$'), lpad(last_name, 15, '!') from employees;
select first_name, instr(first_name, 'a', 1, 2) from employees;
select '!!!HELLO!!MY FRIEND!!!!!!!!', trim(both '!' from '!!!HELLO!!MY FRIEND!!!!!!!!') from dual;
select salary, salary*3.1415, round(salary*3.1415), trunc(round(salary*3.1415), -3)/1000 trunc 
from employees;
select hire_date, add_months(hire_date, 6), last_day(hire_date) from employees;