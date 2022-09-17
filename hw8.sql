select * from employees where length(first_name) = 
(select max(length(first_name)) from employees); 

select * from employees where salary > 
(select avg(salary) from employees);

select city from locations where location_id in 
(select location_id from departments where department_id in
(select department_id from employees where department_id in 
(select department_id from (select sum(salary) s, department_id from employees group by department_id) 
where s = (select min(s) from (select sum(salary) s, department_id from employees group by department_id)))));

select city from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (d.location_id = l.location_id)
group by city 
having sum(salary) = 
    (select min(sum(salary))
            from employees e
                join departments d on (e.department_id = d.department_id)
                join locations l on (d.location_id = l.location_id)
            group by city);

select city, sum(salary) from employees e
join departments d on (e.department_id = d.department_id)
join locations l on (d.location_id = l.location_id)
group by city;

select * from employees e 
where (select salary from employees m where m.employee_id = e.manager_id) > 15000;

select * from departments d where d.department_id not in (select nvl(e.department_id, 0) from employees e);

select * from employees e where nvl(e.employee_id, 0) not in (select nvl(m.manager_id, 0) from employees m);

select * from employees where employee_id not in (select distinct manager_id from employees where manager_id is not null);

select manager_id, count(*) from employees group by manager_id having count(*)>6;

select * from employees where employee_id in (select manager_id from employees group by manager_id having count(*)>6);

select * from employees 
where department_id in 
(select department_id from departments where department_name like 'IT');

select * from employees e where manager_id in
(select m.employee_id from employees m where to_char(hire_date, 'YYYY') = '1995') 
and e.hire_date<'01-jan-99';

select * from employees e where manager_id in
(select m.employee_id from employees m where to_char(hire_date, 'Mon') = 'Jan') 
and job_id in (select job_id from jobs where length(job_title)>15);





