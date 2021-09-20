SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees 
JOIN salaries on employees.emp_no = salaries.emp_no; 


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date <= '1986-12-31';


