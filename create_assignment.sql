create database createstd;
use createstd;
-- 1
create table countries(
	country_id int ,
    country_name varchar(20),
    region_id int
);

-- 3
create table dup_countries select * from countries;
create table dup_countries1 like countries;
desc dup_countries;
desc dup_countries1;

-- 4
insert into countries values (1,'india',121),(2,'england',122),(3,'austrelia',123);
select * from dup_countries;

-- 5
CREATE TABLE null_countries (
  country_id CHAR(2),
  country_name VARCHAR(40) NULL,
  region_id INT Null
);

-- 6
create table jobs(
	 job_id int,
     job_title varchar(20),
     min_salary int,
     max_salary int ,
     check (max_salary < 250000));
alter table jobs modify job_id int primary key; 
-- 7
create table countries1(
	country_id int ,
    country_name varchar(20),
    region_id int,
    check (country_name in ( 'Italy','china','India'))
);     

-- 8
create table job_history(
	employee_id int primary key,
    start_date date,
    end_date date,
    job_id int,
    department_id int );
    
-- 9
create table countries2(
	country_id int unique ,
    country_name varchar(20),
    region_id int
);  

-- 10 
create table jobs1(
	 job_id int,
     job_title varchar(20) default 'blank',
     min_salary int default 8000,
     max_salary int default Null
    ); 
    
insert into jobs1 (job_id) values (1);
insert into jobs1 values (2,'devops',2345,34567);
select * from jobs1;

-- 11
alter table countries1 modify column country_id int unique;

-- 12
alter table countries1 modify column country_id int unique auto_increment;

-- 13
alter table countries1 add constraint unique (country_id ,region_id );

-- 14

create table job_history1(
	employee_id int primary key,
    start_date date,
    end_date date,
    job_id int,
    department_id int,
    foreign key (job_id) references jobs (job_id));
    
-- 15
    
    CREATE TABLE departments (
  department_id int NOT NULL DEFAULT 0,
  department_name VARCHAR(30) NOT NULL,
  manager_id int NOT NULL DEFAULT 0,
  location_id int,
  PRIMARY KEY (department_id, manager_id)
);

create table employees(
	employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id varchar(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (department_id,manager_id) references departments (department_id, manager_id));


-- 16
create table employees1(
	employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id int(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (department_id) references departments (department_id),
  foreign key (job_id) references jobs (job_id)
  )ENGINE = InnoDB;
  
  -- 17
  CREATE TABLE IF NOT EXISTS jobs2 ( 
JOB_ID integer NOT NULL UNIQUE PRIMARY KEY, 
JOB_TITLE varchar(35) NOT NULL DEFAULT ' ', 
MIN_SALARY decimal(6,0) DEFAULT 8000, 
MAX_SALARY decimal(6,0) DEFAULT NULL
)ENGINE=InnoDB;

    create table employees2(
	employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id int(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (job_id) references jobs (job_id)
  on update cascade
  on delete restrict

  )ENGINE = InnoDB;
  
-- 18 
create table employees3(
  employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id int(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (job_id) references jobs (job_id)
  on delete cascade
  on update restrict

  )ENGINE = InnoDB;
  
  -- 19
  create table employees4(
  employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id int(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (job_id) references jobs (job_id)
  on delete cascade
  on update cascade

  )ENGINE = InnoDB;
  
  -- 20
  create table employees5(
  employee_id int primary key,
  first_name varchar(50),
  last_name varchar(50),
  email varchar(100),
  phone_number varchar(20),
  hire_date date,
  job_id int(10),
  salary int,
  commission decimal(5, 2),
  manager_id int,
  department_id int,
  foreign key (job_id) references jobs (job_id)
  on delete no action
  on update no action

  )ENGINE = InnoDB;