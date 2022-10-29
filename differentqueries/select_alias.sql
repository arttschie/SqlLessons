select first_name || ' ' || last_name || ' ' || salary || ' ' || employee_id from employees;
select 'My name is ' || first_name || ' ' || 'my last name is ' || last_name as name from employees;
select 'A'||commission_pct||'B' pct from employees;
select first_name as fn, last_name ln from employees;
select start_date, end_date, (end_date-start_date)+1 as "Count of days" from job_history;
select start_date, end_date, (end_date-start_date)+1 as Count_of_days from job_history;