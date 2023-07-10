-- Drop tables if exists
DROP TABLE titles;
DROP TABLE employees;
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE salaries;

-- Create tables & columns for each data import
CREATE TABLE titles (
	title_id VARCHAR(20) NOT NULL PRIMARY KEY,
	title VARCHAR(50) NOT NULL
);

CREATE TABLE employees (
	emp_no INT NOT NULL PRIMARY KEY,
	emp_title_id VARCHAR(20) NOT NULL,
	birth_date DATE NOT NULL,
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
	sex VARCHAR(10) NOT NULL,
	hire_date DATE NOT NULL,
    FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

CREATE TABLE departments (
	dept_no VARCHAR(20) NOT NULL PRIMARY KEY,
	dept_name VARCHAR(200) NOT NULL
);
	
CREATE TABLE dept_emp (
	id SERIAL NOT NULL PRIMARY KEY,
	emp_no INT NOT NULL,
	dept_no VARCHAR(20) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);
	
CREATE TABLE dept_manager (
	id SERIAL NOT NULL PRIMARY KEY,
	dept_no VARCHAR(20) NOT NULL,
	emp_no INT NOT NULL,
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);
	
CREATE TABLE salaries (
	id SERIAL NOT NULL PRIMARY KEY,
	emp_no INT NOT NULL,
	salary INT NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

-- Use to verify data imports (chg variables)
SELECT COUNT(emp_no) FROM employees;

SELECT * FROM dept_emp LIMIT 100;

SELECT * FROM titles;