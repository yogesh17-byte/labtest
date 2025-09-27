
use join_new;
select * from departments;
select * from locations;
select * from employees;
select * from jobs;
select * from countries;
select * from locations;

-- 1. Write a query to find the addresses (location_id, street_address, city, state_province, country_name) of all the departments.
select d.department_name,l.location_id ,l.street_address, l.city, l.state_province,c.country_name 
from departments d
join locations l 
on d.location_id = l.location_id
join countries c
on l.country_id = c.country_id;


-- 2. Write a query to find the name (first_name, last name), department ID and name of all the employees
select concat(e.first_name,' ',e.last_name) as full_name, d.department_id 
from employees e
join departments d
on e.department_id = d.department_id;


-- 3. Write a query to find the name (first_name, last_name), job, department ID and name of the employees who works in London.
select * from departments;
select concat (e.first_name,' ',e.last_name) as full_name , e.job_id , d.department_id , l.city
from employees e
join departments d
on e.department_id = d.department_id
join locations l 
on d.location_id = l.location_id;


-- 4. Write a query to find the employee id, name (last_name) along with their manager_id and name (last_name).
select * from employees;

select e.employee_id ,e.last_name , m.manager_id, m.first_name
from employees e
join employees m
on e.employee_id = m.manager_id;


-- 5. Write a query to find the name (first_name, last_name) and hire date of the employees who was hired after 'Jones'.
select concat(first_name,' ',last_name) as full_name , hire_date 
from employees 
where hire_date > ( select hire_date from employees where last_name='Jones');
        

-- 6. Write a query to get the department name and number of employees in the department.
select * from departments;

select d.department_name , count(e.employee_id) as emp_count
from employees e
join departments d
on e.department_id = d.department_id
group by d.department_id;


-- 7. Write a query to find the employee ID, job title, number of days between ending date and starting date for all jobs in department 90.
select * from employees;
select * from departments;
select * from jobs;
select * from job_history;

select e.employee_id, e.department_id, j.job_title , timestampdiff(day,jh.start_date,jh.end_date) as work
from employees e 
join jobs j
on e.job_id = j.job_id
left join job_history jh
on j.job_id = jh.job_id
where e.department_id = 90;


-- 8. Write a query to display the department ID and name and first name of manager.
select * from departments;
select * from employees;
select * from locations;
select d.department_id , d.department_name , e.first_name
from employees e
join departments d
on e.employee_id = d.manager_id;

-- 9. Write a query to display the department name, manager name, and city.

select d.department_name , e.first_name ,l.city
from employees e
join departments d
on e.employee_id = d.manager_id
join locations l 
on d.location_id = l.location_id;


-- 10. Write a query to display the job title and average salary of employees.
select avg(e.salary) as avg_sal , j.job_title
from employees e
join jobs j 
on e.job_id = j.job_id
group by j.job_title;


-- 11. Write a query to display job title, employee name, and the difference between salary of the employee and minimum salary for the job.
select j.job_title , concat(e.first_name,' ',e.last_name) as name, e.salary - j.min_salary as sal
from employees e
join jobs j
on e.job_id = j.job_id ;

-- 12. Write a query to display the job history that were done by any employee who is currently drawing more than 10000 of salary.


-- 13. Write a query to display department name, name (first_name, last_name), hire date, salary of the manager for all managers whose experience is more than 15 years.
select * from job_history;
select * from employees;
select * from departments;

use join_new;
select concat(e.first_name,' ',e.last_name)as name,d.department_name,e.hire_date,e.salary
from employees e
join departments d
on e.employee_id = d.manager_id
where timestampdiff(year,hire_date,curdate()) > 15;


