select * from nls_session_parameters where parameter='NLS_DATE_FORMAT';

select SYSDATE from dual;

select TO_CHAR (sysdate, 'DD-MM-RR hh24:mi:ss') from dual;

select sysdate, sysdate+5, sysdate+5.5 from dual;

select employee_id, months_between (end_date, start_date)*31 from job_history;

select end_date, add_months(end_date, -4.5) from job_history;

select next_day(sysdate, 1) from dual;

select * from sys.nls_session_parameters;

select next_day('31.12.22', 'вторник')-7 from dual;

select last_day(sysdate) from dual;

select hire_date, round(hire_date, 'MM') from employees
where employee_id in (120, 121);
 