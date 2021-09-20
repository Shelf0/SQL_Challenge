SELECT employees.emp_no, employees.last_name, employees.first_name, employees.sex, salaries.salaries
FROM employees 
JOIN salaries on employees.emp_no = salaries.emp_no; 


SELECT first_name, last_name, hire_date
FROM employees
WHERE hire_date >= '1986-01-01'
	AND hire_date <= '1986-12-31';


SELECT departments.dep_no, departments.dept_name, dep_manager.emp_no, employees.last_name, employees.first_name
FROM departments
JOIN dep_manager ON departments.dep_no = dep_manager.dep_no
JOIN employees ON dep_manager.emp_no = employees.emp_no;


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dep_no = departments.dep_no;


SELECT first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules'
	AND last_name LIKE 'B%';


SELECT dept_emp.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dep_no = departments.dep_no
WHERE departments.dept_name = 'Sales';

