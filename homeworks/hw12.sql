create table address (
id integer constraint ad_id_un Unique,
counrty varchar2(30),
city varchar2(30)
);

create table friends (
id number,
name varchar2(30),
email varchar2(30),
address_id integer constraint ad_id_fk references address (id),
birthday date,
constraint name_chck CHECK (length(name)>3)
);

create index fr_id_un on friends (id);

alter table friends add constraint fr_id_pk primary key (id);

create unique index fr_email_in on friends (email);

alter table friends modify (email constraint fr_email_nn not null);

drop table friends;

drop table address;