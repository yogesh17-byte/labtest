-- 1. Write a SQL query to find the number of employees hired in each year.
select year(hire_date),count(*) from employees group by year(hire_date) order by year(hire_date);

-- 2. Write a SQL query to find the number of employees in each department.
select count(employee_id), department_id from employees group by department_id order by department_id;

-- 3. Write a SQL query to find the department with the highest total salary.
select department_id,sum(salary) as max_sal from employees group by department_id order by max_sal desc limit 1;

-- 4. Write a query to list the number of jobs available in the employees table.
select count(job_id) as ava_job from employees group by job_id order by ava_job desc;

-- 5. Write a query to get the total salaries payable to employees.
select sum(salary) as sum_sal from employees ;
-- group by salary order by sum_sal desc;

-- 6. Write a query to get the minimum salary from the employees table.
select min(salary) as minimum_sal from employees;

-- 7. Write a query to get the maximum salary of an employee working as a Programmer.
select *from employees;
select max(salary) as max_pro_sal from employees where department_id='IT_PROG';

-- 8. Write a query to get the average salary and number of employees working the department 90.
select count(employee_id) as total_emp,avg(salary) as average_sal from employees where department_id=90;

-- 9 Write a query to get the highest, lowest, sum, and average salary of all employees. 
select sum(salary),max(salary),min(salary),avg(salary) from employees;

-- 10 Write a query to get the number of employees with the same job
select job_id, count(employee_id) as no_emp from employees group by job_id ;

-- 11 Write a query to get the difference between the highest and lowest salaries. 
select max(salary) - min(salary) as diff from employees;

-- 12 Write a query to find the manager ID and the salary of the lowest-paid employee for that manager. 
use yogesh;
select * from employees;
select manager_id, min(salary) as min_sal from employees group by manager_id;

-- 13 Write a query to get the department ID and the total salary payable in each department.
select manager_id, sum(salary) as sum_sal from employees group by manager_id;

-- 14 Write a query to get the average salary for each job ID excluding programmer. 
select job_id, avg(salary) as avg_sal from employees where job_id <> 'IT_PROG' group by job_id;

-- 15 Write a query to get the total salary, maximum, minimum, average salary of employees (job ID wise), for department ID 90 only. 
select job_id , department_id, min(salary),max(salary),avg(salary),sum(salary) from employees where department_id = 90 group by job_id,department_id;


-- 16 Write a query to get the job ID and maximum salary of the employees where maximum salary is greater than or equal to $4000.
select job_id , max(salary) from employees  group by job_id  having max(salary) >= 4000;

-- 17 Write a query to get the average salary for all departments employing more than 10 employees. 
select * from employees;
select count(department_id) as departentid, avg(salary) from employees group by department_id having departentid > 10;

