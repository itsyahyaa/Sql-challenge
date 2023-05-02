-- Create database 
CREATE DATABASE IF NOT EXISTS sql_challenge;

USE sql_challenge;
-- create titles table
CREATE TABLE IF NOT EXISTS titles (
	title_id varchar(5) PRIMARY KEY,
	title varchar(30)
);

-- create employees table
CREATE TABLE IF NOT EXISTS employees (
	emp_no varchar(10) PRIMARY KEY,
	emp_title_id varchar(5) references titles(title_id),
	birth_date date,
	first_name varchar(45),
	last_name varchar(45),
	sex varchar(1),
	hire_date DATE
);

-- create departments table
CREATE TABLE IF NOT EXISTS departments (
	dept_no varchar(5) PRIMARY KEY,
	dept_name varchar(30)
);

-- create department managers table
CREATE TABLE IF NOT EXISTS dept_manager (
	dept_no varchar(5) references departments(dept_no),
	emp_no varchar(10)
);

-- create department employees table
CREATE TABLE IF NOT EXISTS dept_emp (
	emp_no varchar(10) references employees(emp_no),
	dept_no varchar(5) references departments(dept_no)
);

-- create salaries table
CREATE TABLE IF NOT EXISTS salaries (
	emp_no varchar(10) references employees(emp_no),
	salary int
);