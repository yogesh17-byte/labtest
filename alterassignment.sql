-- 1 
alter table customers add  column Phone_Number varchar (20);

-- 2
alter table employees modify age int(10);
desc employees;

-- 3
alter table contacts rename column address to Home_Address;

-- 6
alter table users add constraint uc_emial unique (email);
show create table users;

-- 7
alter table inventory modify quantity int default '0';

-- 8 
desc customers;
alter table customers modify column last_name varchar(50) first;

-- 9 
ALTER TABLE products AUTO_INCREMENT = 1001;
select * from products;
desc products;

-- 10
alter table employees add constraint check_Salary check (salary > 20000);
show create table employees;
desc employees;


-- HR database
-- 1
use hr;
alter table countries rename to country_new;

-- 2
alter table locations add column region_id int;

-- 3
alter table locations add column ID int first;

-- 4
select * from locations;
desc locations;
alter table locations modify column region_id int after  state_province;

-- 5
alter table locations modify column country_id int (20);
select * from locations;

-- 6
alter table locations drop column city;

-- 7
alter table locations rename column state_province to state;

-- 8
alter table locations add constraint primary key (location_id);

-- 9 
alter table locations add constraint primary key( location_id,country_id);

-- 10
alter table locations drop primary key;

-- 16
use alterass;
alter table customers modify email varchar (150);

-- 17
alter table employees add column status varchar(10) default 'active';

-- 18
alter table customers drop column  phone_number;

-- 19 
alter table departments modify department_name varchar(20) not null;

-- 20
desc users;

ALTER TABLE users
DROP INDEX email;

-- 21
alter table inventory rename to product_inventory;

-- 23
ALTER TABLE employees modify column status varchar (20) default 'Inactive';

-- 25
show create table  employees;
select * from employees;
alter table employees modify salary int after last_name;

-- 26
alter table employees modify status varchar(20) ;
desc employees;

-- 27
alter table users add constraint unique_email_constraint unique (email);
desc users;
show create table users;

-- 29
desc employees;
show create table employees;
alter table employees change SMALL SMALL INT null;













