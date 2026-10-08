-- Assignment I

-- Table Creation
create database employee;
use employee;

-- Department Table
create table department (
             Dept_ID int,
             Dept_Name varchar(100)
             );

-- Location Table        
create table location (
    location_id int,
    location varchar(30)
    );

-- Employee Table
CREATE TABLE employees (
    employee_id int,
    employee_name varchar(50),
    gender ENUM('M','F'),
    age int,
    hire_date date,
    designation varchar(100),
    department_id int,
    location_id int,
    salary decimal(10,2)
);

-- Altering Tables
alter table employees add email varchar(100);
alter table employees modify designation varchar(200);
alter table employees DROP COLUMN age;
ALTER TABLE employees CHANGE hire_date date_of_joining DATE;

SHOW DATABASES;
SHOW TABLES;
DESCRIBE department;
DESCRIBE location;
DESCRIBE employees;

-- Renaming Tables
rename table department to Departments_Info;
rename table location to Locations;
 
SHOW TABLES;
DESCRIBE Departments_Info;
DESCRIBE Locations;
DESCRIBE employees;

-- Table Truncation
truncate table employees;

-- Table Dropping
drop table employees;
drop database employee;

-- Recreating Database
create database employee;

-- Constraints
use employee;

create table departments (
    department_id int primary key,
    department_name varchar(100) not null unique
);

create table location (
    location_id int primary key AUTO_INCREMENT,
    location varchar(30) not null unique
);

create table employees ( 
    employee_id int primary key, 
    employee_name varchar(50) not null, 
    gender enum('M','F'), 
    age int check (age >= 18), 
    hire_date date, 
    designation varchar(100), 
    department_id int, 
    location_id int, 
    salary decimal(10,2), 

    foreign key (department_id) 
        references departments(department_id), 

    foreign key (location_id) 
        references location(location_id) 
);

SHOW TABLES;
DESCRIBE departments;
DESCRIBE location;
DESCRIBE employees;

-- Populating Tables
USE employee;

INSERT INTO departments (department_id, department_name) VALUES
(1, 'Software Development'),
(2, 'Marketing'),
(3, 'Data Science'),
(4, 'Human Resources'),
(5, 'Product Management'),
(6, 'Content Creation'),
(7, 'Finance'),
(8, 'Design'),
(9, 'Research and Development'),
(10, 'Customer Support'),
(11, 'Business Development'),
(12, 'IT'),
(13, 'Operations');

INSERT INTO location (location) VALUES
('Chennai'),
('Bangalore'),
('Hyderabad'),
('Pune');

INSERT INTO employees (employee_id, employee_name, gender, age, hire_date, designation, department_id, location_id, salary) VALUES
(5001, 'Vihaan Singh', 'M', 27, '2015-01-20', 'Data Analyst', 3, 4, 60000),
(5002, 'Reyansh Singh', 'M', 31, '2015-03-10', 'Network Engineer', 12, 1, 80000),
(5003, 'Aaradhya Iyer', 'F', 26, '2015-05-20', 'Customer Support Executive', 10, 2, 45000),
(5004, 'Kiara Malhotra', 'F', 29, '2015-07-05', NULL, 8, 3, 70000),
(5005, 'Anvi Chaudhary', 'F', 25, '2015-09-11', 'Business Development Executive', 11, 1, 55000),
(5006, 'Dhruv Shetty', 'M', 28, '2015-11-20', 'UI Developer', 8, 2, 65000),
(5007, 'Anushka Singh', 'F', 32, '2016-01-15', 'Marketing Manager', 2, 3, 90000),
(5008, 'Diya Jha', 'F', 27, '2016-03-05', 'Graphic Designer', 8, 4, 70000),
(5009, 'Kiaan Desai', 'M', 30, '2016-05-20', 'Sales Executive', 11, 3, 55000),
(5010, 'Atharv Yadav', 'M', 29, '2016-07-10', 'Systems Administrator', 12, 4, 80000),
(5011, 'Saanvi Patel', 'F', 28, '2016-09-20', 'Marketing Analyst', 2, 1, 60000),
(5012, 'Myra Verma', 'F', 26, '2016-11-05', 'Operations Manager', 13, 2, 95000),
(5013, 'Arnav Rao', 'M', 33, '2017-01-20', 'Customer Success Manager', 10, 3, 75000),
(5014, 'Vihaan Mohan', 'M', 30, '2017-03-10', 'Supply Chain Analyst', 10, 2, 60000),
(5015, 'Ishaan Kumar', 'M', 27, '2017-05-20', 'Financial Analyst', 7, 1, 85000),
(5016, 'Zoya Khan', 'F', 31, '2017-07-05', 'Legal Counsel', 4, 4, 100000),
(5017, 'Kabir Nair', 'M', 28, '2017-09-11', 'IT Support Specialist', 12, 2, 80000),
(5018, 'Ishan Mishra', 'M', 25, '2017-11-20', 'Research Scientist', 9, 3, 75000),
(5019, 'Ishika Patel', 'F', 29, '2018-01-15', 'Talent Acquisition Specialist', 4, 4, 55000),
(5020, 'Aarav Nair', 'M', 32, '2018-03-05', 'Software Engineer', 1, 1, 90000),
(5021, 'Advik Kapoor', 'M', 26, '2018-05-20', 'Finance Analyst', 7, 3, 85000),
(5022, 'Aadhya Iyengar', 'F', 28, '2018-07-10', 'HR Specialist', 4, 4, 60000),
(5023, 'Anika Paul', 'F', 30, '2018-09-20', 'Public Relations Specialist', 2, 2, 70000),
(5024, 'Aryan Shetty', 'M', 27, '2018-11-05', 'Product Manager', 5, 1, 95000),
(5025, 'Avni Iyengar', 'F', 31, '2019-01-20', 'Data Scientist', 3, 4, 100000),
(5026, 'Vivaan Singh', 'M', 29, '2019-03-10', 'Business Analyst', 3, 2, 75000),
(5027, 'Ananya Paul', 'F', 32, '2019-05-20', 'Content Writer', 6, 3, 60000),
(5028, 'Anaya Kapoor', 'F', 26, '2019-07-05', 'Event Coordinator', 6, 1, 60000),
(5029, 'Arjun Kumar', 'M', 33, '2019-09-11', 'Quality Assurance Analyst', 12, 2, 80000),
(5030, 'Sara Iyer', 'F', 28, '2019-11-20', 'Project Manager', 5, 1, 90000);

-- Assignment II

-- Q. A query to retrieve distinct salaries from the Employees table.
Select distinct salary as DistinctSalary from employees;

-- Q. Provide aliases for the "age" and "salary" columns as Employee_Age and
--  Employee_Salary, respectively.
Select
    age as Employee_Age,
    salary as Employee_Salary
from employees;

-- Q. Retrieve employees with a salary greater than ₹50000 and hired before 2016-01-01.
select employee_name, salary
from employees
where salary>"50000" and hire_date<"2016-01-01";

-- Q. Find the employee whose designation is missing and fill it with "Data Scientist".
select * from employees
where designation IS NULL;

SET SQL_SAFE_UPDATES = 0;

update employees
set designation = "Data Scientist"
where designation is null;

-- Q. Find employees sorted by department ID in ascending order and salary in descending order.
Select * from employees
order by department_id ASC, salary DESC;

-- Q. Display the first 5 employees hired in the year 2018.
select * from employees
where year (hire_date) = 2018
order by hire_date asc limit 5;

-- Q. Calculate the sum of all salaries in the Finance department.
select * from departments
where department_name = "Finance";
Select sum(salary) as SumOfSalary from employees
where department_id = "7";

-- OR
 select sum(salary) as SumOfSalary
 from employees e
 join departments d
 on e.department_id=d.department_id
 where department_name = "Finance";
 
 -- Q. Find the minimum age among all employees.
 select min(age) as MinimumAge from employees;
 
 -- Q. List the maximum salary for each location.
 select max(salary) as MaxSalary, location as Location
 from employees e
 join location l
 on e.location_id = l.location_id
 group by location;
 
 -- Q. Calculate the average salary for each designation containing the word 'Analyst'.
select avg(salary) as AverageSalary 
from employees
where designation like '%Analyst%';

-- Q. Find departments with less than 3 employees.
select department_name , count(employee_id) as NumOfEmp
from departments d
join employees e
on d.department_id = e.department_id
group by department_name having count(employee_id)<3
order by NumOfEmp ASC;

-- Q. Find locations with female employees whose average age is below 30.
select location, avg(age) as AvgAge
from employees e
join location l
on e.location_id = l.location_id
where gender = "F" 
group by location having AvgAge<30; 

-- Q. List employee names, their designations, and department 
-- names where employees are assigned to a department.
select employee_name , designation, department_name
from employees e
inner join departments d
on d.department_id = e.department_id
order by employee_name Asc;

-- Q. List all departments along with the total number of employees
-- in each department, including departments with no employees.
select department_name, count(employee_id) as CountOfEmployees
from departments d
left join employees e
on d.department_id = e.department_id
group by department_name
order by department_name;

-- Q. Display all locations along with the names of employees assigned to each
-- location. If no employees are assigned to a location, display NULL for
-- employee name.
select location, employee_name
from employees e
right join location l
on e.location_id = l.location_id
order by location asc;

-- 










