CREATE TABLE locations2 AS (SELECT * FROM locations WHERE 1=2);

select * from locations2;

insert into locations2 (location_id, street_address, postal_code, city, state_province, country_id) 
values (1, 'Stepnoy', '110003', 'Verona', 'Pizzeria', 'IT');

desc locations2;

insert into locations2 (location_id, street_address, postal_code, city, state_province, country_id) 
values (2, 'Orbita', '110003', 'Rome', 'Pastaria', 'IT');
commit;

insert into locations2 values (2+1, 'Aksai', to_char('110004'), 'Paris', 'Saint-Germain', 'FR');

insert into locations2 values ((select location_id from locations  where street_address = 'Aksai')+1, 'PSG', '110004', 'Reims', 'Monagske', 'FR');

commit;

insert into locations2 (select * from locations where length(state_province)>9);

commit;

create table locations4europe as (select * from locations where 1=2);

select * from locations;  

insert all
when 1=1 then
into locations2 values (location_id, street_address, postal_code, city, state_province, country_id)
when region_name = 'Europe' then
into locations4europe (location_id, street_address, city, country_id) 
    values (location_id, street_address, city, country_id)
select l.location_id, l.street_address, l.postal_code, l.city, l.state_province, l.country_id, region_name from locations l
            join countries c on (l.country_id = c.country_id)
            join regions r on (c.region_id = r.region_id);
    
select * from countries;

select * from regions;

select * from locations2;

select l.location_id, l.street_address, l.city, l.country_id from locations l
            join countries c on (l.country_id = c.country_id)
            join regions r on (c.region_id = r.region_id)
                where region_name = 'Europe';
                
select * from locations4europe;

commit;

update locations2 set postal_code = '777' where postal_code is null;

commit;

select * from locations2;

update locations2 set postal_code = null where location_id <5;

update locations2 set postal_code = (select postal_code from locations where location_id = 2600) where postal_code is null;

commit;

delete locations2 where country_id = 'IT';

savepoint s1;

update locations2 set street_address = 'Sezam st. 18' where location_id > 2500;

savepoint s2;

delete locations2 where street_address = 'Sezam st. 18';

rollback to savepoint s1;

commit;