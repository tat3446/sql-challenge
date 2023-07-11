-- Mod 9 Data Analysis

-- List the employee number, last name, first name, sex, and salary of each employee
CREATE VIEW employ_salary AS
SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary
FROM employees e
  JOIN salaries s
  ON (e.emp_no = s.emp_no);
  
SELECT *
FROM employ_salary;


-- List the first name, last name, and hire date for the employees who were hired in 1986
CREATE VIEW hire_1986 AS
SELECT  first_name, last_name, YEAR(hire_date) AS hire_year
FROM employees;
		
		WHERE hire_year = '1986'
	
SELECT *
FROM hire_1986;


-- List the manager of each department along with their department number, department name, employee number, last name, and first name


-- List the department number for each employee along with that employee’s employee number, last name, first name, and department name


-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B


-- List each employee in the Sales department, including their employee number, last name, and first name


-- List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name


-- List the frequency counts, in descending order, of all the employee last names