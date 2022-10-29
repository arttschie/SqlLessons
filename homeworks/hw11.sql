create table friends as
(select employee_id id, first_name name, last_name surname 
from employees 
where commission_pct != null);

select * from friends;

alter table friends add (email varchar2(30));

alter table friends modify (email default 'no email');

insert into friends (id, name, surname) values (1, 'Jhonny', 'Depp');

alter table friends rename column id to friends_id;

drop table friends;

create table friends(
id integer not null,
name varchar2(30),
surname varchar2(30),
email varchar2(30),
salary integer default 0,
city varchar2(30),
birthday date default (sysdate));

insert into friends values (1, 'Ivan', 'Ivanov', 'ivan.ivanov@mail.ru', 250000, 'Almaty', '28-JUN-98');

insert into friends (id, name, surname, email, city) values (2, 'Kent', 'Blizkiy', 'kent.blizkiy@mail.ru', 'Karaganda');

commit;

alter table friends drop column salary;

alter table friends set unused column birthday;

alter table friends drop unused columns;

alter table friends read only;

insert into friends (id, name, surname, email, city) values (2, 'Kent', 'Blizkiy', 'kent.blizkiy@mail.ru', 'Karaganda');

alter table friends read write;

truncate table friends;

drop table friends;