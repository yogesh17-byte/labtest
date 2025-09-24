select * from employees; 
-- 1
select job_id from employees where salary <= 20000;
select * from employees where salary > 5000;

-- 2
select * from employees where department_id not like  90;

-- 3
select * from employees where salary < 4000;

-- 4
select * from employees where commission_pct is not null ;
select * from employees where manager_id is null ;

-- 5
select * from employees where manager_id > 5 ;

-- 6
select * from employees where department_id = 90;

-- 7
select * from employees where department_id in(100, 200, 300);

-- 8
select job_id from employees where salary >= 10000;

-- 9
select department_id from departments where location_id = 1700;

-- 10
select country_name from country_new where region_id >=2;

-- 11
use yogesh;
select * from employees where MANAGER_ID < 103;

-- 12
select * from employees where salary > 80000;

-- 13
select * from employees where DEPARTMENT_ID >= 60;

-- 14
select * from employees where salary between 4000 and 8000 ;

-- 15
select job_id from employees where salary > 6000;

-- 16 
select job_id from employees where salary <> 5000;

-- 17
select department_id from employees where department_id <> 0;

-- 18
use createstd;
select country_name from countries where region_id !=2;

-- 19
use yogesh;
select * from employees where salary = 6000;

-- 20
select * from employees where salary > 10000 or DEPARTMENT_ID = 60;

-- 21
select * from employees where salary >= 3000;

-- 22
select * from employees where manager_id > 2 or DEPARTMENT_ID = 60;

-- 23
select * from employees where salary > 10000 or DEPARTMENT_ID = 60;

-- 24
select * from employees where DEPARTMENT_ID not in (60, 70, 80);

-- 25
select job_id from employees where salary > 5000;

-- 26
select * from employees where DEPARTMENT_ID not in (60, 100);

-- 27
select * from employees where LAST_NAME like '%son';

-- 28
select * from employees where LAST_NAME like 'J%';

-- 29 
select * from employees where salary > 8000 or DEPARTMENT_ID = 90;

-- 31
select * from employees where salary > 8000 and DEPARTMENT_ID in (50,60);

-- 32 
use createstd;
select country_name from countries where country_name like '%c' and region_id > 1;

-- 33
use yogesh;
select * from employees where first_name like '%an%' and salary > 4000;

-- 35
select * from employees where first_name like 'a%' and LAST_NAME like '%son%';

-- 36
select * from employees where salary > 5000 or DEPARTMENT_ID = 100;

-- 37
use creatstd;
select country_name from countries where country_name not like 'A%' and region_id > 1;

-- 38
use yogesh;
select * from employees where salary > 7000 or DEPARTMENT_ID > 50;

-- 39
SELECT * FROM employees WHERE salary > 10000 OR salary < 3000;

-- 40
select * from employees where salary > 6000 or commission_pct < 0.20 or commission_pct is null  ;

-- 41
SELECT * FROM employees
WHERE hire_date >= DATE_SUB(CURDATE(), INTERVAL 10 YEAR);

-- 43 
use createstd;
select * from  countries where region_id > 2 and region_id != 4;

-- 44 
use yogesh;
select * from  employees where salary not between 5000 and 10000;

-- 45
select * from  employees where hire_date not between  '1995-01-01' and '2005-12-31';

-- 46
select * from  employees where salary > 5000 and DEPARTMENT_ID != 50;

-- 47
select * from  employees where salary != 7000 and (salary > 10000 or salary < 3000 );

-- 48
select * from jobs where min_salary > 5000 or max_Salary < 15000;

-- 49
use yogesh;
select * from jobs where min_salary = max_salary / 2;

-- 50
select * from employees  where hire_date >  '1990-01-01' and manager_id > 100;

-- 51
select * from employees  where salary > 10000 and job_id in ('IT_PROG','ST_CLERK');