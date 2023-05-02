-- import csv files into mysql using command lines
mysql --local-infile=1 -u root -p     
-- departments.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/departments.csv' into table departments
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;

-- dept_emp.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/dept_emp.csv' into table dept_emp
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;

-- dept_manager.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/dept_manager.csv' into table dept_manager
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;

-- employees.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/employees.csv' into table employees
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;

-- salaries.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/salaries.csv' into table salaries
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;

-- titles.csv
load data local infile '/Users/yahyamohamed/Data_science/sql/Sql-challenge/data/titles.csv' into table titles
fields terminated by ','
enclosed by '"' 
lines terminated by '\n'
ignore 1 rows;