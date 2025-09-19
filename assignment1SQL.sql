use db1;

--- //1
create table Department(
	dept_id int primary key,
    dept_name varchar(30)
);

-- //2
CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(30),
    salary DOUBLE,
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);



-- 3
insert into Department value (1,"Developer"), (2,"tester"),  (3,"product");
 
insert into employee 
	VALUES (101, 'Amit Sharma', 75000.00, 1),
       (102, 'Neha Verma', 68000.00, 2),
       (103, 'Rahul Joshi', 72000.00, 1);

-- 4
select * from Department;

-- 4
SELECT 
    e.emp_id,
    e.emp_name,
    d.dept_name
FROM 
    Employee e
JOIN 
    Department d ON e.dept_id = d.dept_id;
    
-- 5
SELECT 
    e.emp_id,
    e.emp_name,
    e.salary,
    d.dept_name
FROM 
    Employee e
JOIN 
    Department d ON e.dept_id = d.dept_id
WHERE 
    d.dept_name = 'Developer';

-- 7
SELECT dept_id FROM Department WHERE dept_name = 'developer';
insert into Employee values (104,"Meena",6768.90,1);

-- 8

insert into Employee values (105,"harshit",7687.90,10);
-- insert into Employee values (105,"harshit",7687.90,10)	Error Code: 1452. Cannot add or update a child row: a foreign key constraint fails (`db1`.`employee`, CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`dept_id`) REFERENCES `department` (`dept_id`) ON UPDATE CASCADE)	0.015 sec

-- 9
DELETE FROM Department
WHERE dept_name = 'developer';

-- op=23:34:22	DELETE FROM Department WHERE dept_name = 'developer'	Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.	0.000 sec

-- 10
Drop table Department;
-- op= 23:46:45	Drop table Department	Error Code: 3730. Cannot drop table 'department' referenced by a foreign key constraint 'employee_ibfk_1' on table 'employee'.	0.000 sec

-- 12
update Department set dept_id=10  where dept_id = 1;

-- 13
select * from Department;
select * from Employee;





