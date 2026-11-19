Create Database Employee;

Use Employee;
CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100)
);

CREATE TABLE location (
    location_id INT PRIMARY KEY,
    location VARCHAR(30)
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50),
    gender ENUM('M', 'F'),
    age INT,
    hire_date DATE,
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),
    FOREIGN KEY (department_id) REFERENCES departments(department_id),
    FOREIGN KEY (location_id) REFERENCES location(location_id)
);

-- Add email column to employees
ALTER TABLE employees
ADD COLUMN email VARCHAR(100);

-- Widen designation data type (e.g., VARCHAR(255) or TEXT)
ALTER TABLE employees
MODIFY COLUMN designation VARCHAR(255);

-- Drop age column from employees
ALTER TABLE employees
DROP COLUMN age;

-- Rename hire_date to date_of_joining
ALTER TABLE employees
RENAME COLUMN hire_date TO date_of_joining;

RENAME TABLE departments TO Departments_Info;
RENAME TABLE location TO Locations;

TRUNCATE TABLE employees;

DROP TABLE IF EXISTS employees;
DROP DATABASE IF EXISTS employee;

DROP DATABASE IF EXISTS employee;
CREATE DATABASE employee;
USE employee;

CREATE TABLE departments (
    department_id INT PRIMARY KEY,
    department_name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE location (
    location_id INT PRIMARY KEY AUTO_INCREMENT,
    location VARCHAR(30) NOT NULL UNIQUE
);

CREATE TABLE employees (
    employee_id INT PRIMARY KEY,
    employee_name VARCHAR(50) NOT NULL,
    gender ENUM('M', 'F'),
    age INT CHECK (age >= 18),
    hire_date DATE DEFAULT (CURRENT_DATE),
    designation VARCHAR(100),
    department_id INT,
    location_id INT,
    salary DECIMAL(10, 2),
    CONSTRAINT fk_emp_dept FOREIGN KEY (department_id) REFERENCES departments(department_id),
    CONSTRAINT fk_emp_loc FOREIGN KEY (location_id) REFERENCES location(location_id)
);

