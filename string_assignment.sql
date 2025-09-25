use yogesh;
use northwind;
-- 1 
select concat (first_name ," ", last_name) as full_Name from employees;

-- 2 
select lower(first_name) , upper(last_name)  from employees;

-- 3 
select upper(COUNTRY_NAME) from countries;

-- 4 
select first_name , length(first_name) from employees;

-- 5
select email , length(email) from employees where length(email) > 10;

-- 6 
select first_name , substring(first_name,1,3) as substring from employees;

-- 7
select phone_number , substring(phone_number,(length(phone_number)-4), length(phone_number)) as subphone from employees;

-- 8 
select last_name, instr(last_name,'a') as positon from employees;

-- 9
use yogesh;
select * from employees;
select * from countries;
select job_id, instr (job_id,'IT') as position from employees;

-- 10
select job_id , replace(last_name,'a','X')as modify_name from employees;

-- 11
select region_name , replace(region_name,'europe','eu')as modify_name from region;

-- 12
select first_name , trim(first_name) from employees;

-- 13
select first_name , rtrim(first_name) from employees;

-- 14
select email, left(email,5) as email from employees;

-- 15 
select country_name , right(country_name,3) as country_name from countries;

-- 16
SELECT EMAIL,
       SUBSTRING_INDEX(EMAIL, '@', -1) AS domain
FROM EMPLOYEES;

-- 17 
select phone_number, substring_index(phone_number, '.',1) as copy from employees;

-- 18 
select first_name,last_name, if(first_name = last_name,'0','1') from employees;

-- 19
use hr;
select region_name, if(region_name = 'Asia','0','1') from regions;

-- 20
select * from employees;
select first_name,last_name,job_id, concat (first_name,'-',last_name,'-',job_id) as com from employees;

-- 21
select first_name ,concat(substring_index(email,'@',1),' ', first_name)as com from employees;

-- 22
select last_name, replace(last_name,'e','E') as replacee from employees where last_name like '%e';

-- 23
SELECT FIRST_NAME,
       INSTR(FIRST_NAME, 'o') AS position_of_o
FROM EMPLOYEES;

-- 24
select city,left(trim(city),3) as clean from locations;

-- 25 
select last_name , instr(last_name,'n') as pos from employees;

-- 26
select first_name , instr(first_name,'a') as pos from employees;

-- 27
select job_id , instr(job_id,'e') as pos  from employees where instr(job_id,'e') > 5;

-- 28
select first_name,last_name from employees where first_name < last_name;

-- 29 
use hr;
select department_name
from departments
where find_in_set(department_name, 'IT,HR');

-- 30 
select first_name , length(first_name) as length from employees where length(first_name) > 6;

-- 31 
select country_name from countries where COUNTRY_NAME in ('China', 'India', 'Japan');

-- 32
select department_id from employees where department_id in (50,60,70);

-- 33
select country_name , left(country_name,2), right(country_name,2) from countries;

-- 34
SELECT LAST_NAME
FROM EMPLOYEES
WHERE INSTR(LAST_NAME, 'o') > LENGTH(LAST_NAME) / 2;

-- 35
select first_name , instr(first_name,'a') as posA , instr(first_name,'e') as posE  from employees;


-- 36 
select email, substring_index(email, '@' ,1) as email from employees where substring_index(email, '@' ,1) = 'example.com';

-- 37 
select department_id , SUM(department_id in (50,60,70)) as coun from employees GROUP BY department_id;

-- 38 
select country_name from countries where region_id in (1,3);

-- 39 
select * from employees;
select first_name from employees where department_id in (50,60,70) or salary > 10000;

-- 40
select first_name from employees where department_id in (50,60) or manager_id in (103,108);