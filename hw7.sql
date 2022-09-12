select r.region_name, count(*)
    from regions r
        join countries c on (r.region_id = c.region_id)
        join locations l on (c.country_id = l.country_id)
        join departments d on (l.location_id = d.location_id)
        join employees e on (d.department_id = e.department_id)
group by r.region_name;

select region_name, count(*)
    from employees e
        join departments d on (e.department_id = d.department_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id)
GROUP by region_name;

select first_name, last_name, department_name, job_title, street_address, country_name, region_name
    from employees e
        join departments d on (e.department_id = d.department_id)
        join jobs j on (e.job_id = j.job_id)
        join locations l on (d.location_id = l.location_id)
        join countries c on (l.country_id = c.country_id)
        join regions r on (c.region_id = r.region_id);
        
select man.first_name, count(*)
    from employees emp
        join employees man on (emp.manager_id = man.manager_id)
group by man.first_name
    having count(*)>6;
    
select department_name, count(*)
    from employees
        join departments using (department_id)
group by department_name
        having count(*)>30;
        
select department_name 
    from employees
        right join departments using (department_id)
    where first_name is null;
    
select emp.*
    from employees emp
        join employees man on (emp.manager_id = man.employee_id)
    where to_char(man.hire_date, 'YYYY')='1996' and emp.hire_date<to_date('01-JAN-00');
    
select region_name, country_name 
    from regions
        natural join countries;

select e.first_name, e.last_name, e.salary, j.min_salary, j.job_id
    from employees e
        join jobs j on (e.job_id = j.job_id and salary<min_salary+1000);

select distinct first_name, last_name, country_name 
    from employees e
        full outer join departments d on (e.department_id = d.department_id)
        full outer join locations l on (d.location_id = l.location_id)
        full outer join countries c on (l.country_id = c.country_id);
        
select first_name, last_name, country_name
    from employees cross join countries;
    
select r.region_name, count(*)
    from regions r, countries c, locations l, departments d, employees e
    where r.region_id = c.region_id and 
        c.country_id = l.country_id and
        l.location_id = d.location_id and
        d.department_id = e.department_id
group by r.region_name; 

select department_name 
    from employees e, departments d
    where e.department_id (+) = d.department_id 
    and first_name is null;
        
