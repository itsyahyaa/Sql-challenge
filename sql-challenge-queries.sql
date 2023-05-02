-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary.

SELECT e.emp_no,
       e.last_name,
       e.first_name,
       e.sex,
       s.salary
FROM employees e
JOIN salaries s ON e.emp_no = s.emp_no;

-- 2. List first name, last name, and hire date for employees who were hired in 1986.

SELECT first_name,
       last_name,
       hire_date
FROM employees
where year(hire_date) = 1986;

-- version 2

SELECT first_name,
       last_name,
       hire_date
FROM employees
WHERE hire_date BETWEEN '1986-1-1' and '1986-12-31'
ORDER BY hire_date ASC;

-- 3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

SELECT dm.dept_no,
       d.dept_name,
       dm.emp_no,
       e.first_name,
       e.last_name
from dept_manager as dm
JOIN departments as d on dm.dept_no = d.dept_no
JOIN employees as e on dm.emp_no = e.emp_no
ORDER BY d.dept_name ASC;

--  4. List the department of each employee with the following information: employee number, last name, first name, and department name.

SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name
from departments as d
JOIN dept_emp as dm on dm.dept_no = d.dept_no
JOIN employees as e on dm.emp_no = e.emp_no
ORDER BY d.dept_name ASC;

-- 5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name,
       last_name,
       sex
from employees
where first_name = "Hercules"
    and last_name like 'B%'
ORDER by 2 ASC;

-- 6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name
from employees as e
join dept_emp as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE d.dept_name = 'Sales';

-- 7.List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT e.emp_no,
       e.last_name,
       e.first_name,
       d.dept_name
from employees as e
join dept_emp as dm on e.emp_no = dm.emp_no
JOIN departments as d on dm.dept_no = d.dept_no
WHERE d.dept_name = 'Sales'
    and d.dept_name = 'Development';

-- 8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name,
       COUNT(emp_no) as "Share last Name"
FROM employees
GROUP BY last_name
ORDER BY 1 DESC;

-- 9. create view for bonus bar chard of avg salary by title

SELECT ROUND(avg(s.salary), 2) as 'Avg salary',
       t.title as 'Employees Title'
from employees as e
JOIN titles as t on e.emp_title_id = t.title_id
JOIN salaries as s on e.emp_no = s.emp_no
GROUP BY t.title
ORDER BY 2 ASC;