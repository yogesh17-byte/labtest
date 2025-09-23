select * from employees;
desc employees;
show create table employees;
alter table employees drop constraint EMP_EMAIL_UK;

-- 1
update employees set email='not available';

-- 2
update employees set commission_pct=0.10;

-- 3
update employees set email = 'not available' , commission_pct=0.10  where department_id =110;

-- 4
update employees set email='not available' where department_id=80 and commission_pct<0.20;

-- 5

update employees set email='not available' where department = 'Accounting';

-- 6
update employees set salary=8000 where department_id= 105 and salary < 5000;

-- 7
update employees set job_id='sh_cleark' where employee_id=118 and department_id=30 and job_id not like '%sh';

-- 8
update employees set salary=salary*1.25 where department_id=40;
update employees set salary=salary*1.15 where department_id=90;
update employees set salary=salary*1.10 where department_id=110;

-- 9
SELECT MIN((salary)+2000)*1.20 AS min_salary,
       MAX((salary)+2000)*1.20 AS max_salary,
       AVG (commission_pct + 0.10) AS Commission_pct
FROM employees where job_id='PU_CLERK';

select * from employees;
-- Error Code: 1140. In aggregated query without GROUP BY, expression #3 of SELECT list contains nonaggregated column 'yogesh.employees.COMMISSION_PCT'; this is incompatible with sql_mode=only_full_group_by
