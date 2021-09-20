SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees 
JOIN salaries on employees.emp_no = salaries.emp_no; 




