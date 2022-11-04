create table emp100 as (select first_name, last_name, salary, department_id from employees);

create force view v1000 as select first_name, last_name, salary, department_name, e.city 
                        from emp100 e join departments d on (e.department_id = d.department_id);
                                        
alter table emp100 add (city varchar2(50));

alter view v1000 compile;

select * from v1000;

create SYNONYM syn1000 for v1000;

drop public synonym syn1000;

drop view v1000;

drop table emp100;

drop synonym syn1000;

create sequence seq1000 start with 12 increment by 4 maxvalue 200 cycle;

alter sequence seq1000 nocycle;

alter sequence seq1000 NOMAXVALUE;

insert into employees (employee_id, last_name, email, hire_date, job_id) values (seq1000.nextval, 'Man', 'email', '03-NOV-22', 'IT_PROG');

insert into employees (employee_id, last_name, email, hire_date, job_id) values (seq1000.nextval, 'Man', 'email1', '03-NOV-22', 'IT_PROG');

commit;

select * from employees where email like 'email' or email like 'email1';