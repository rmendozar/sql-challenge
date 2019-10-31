SELECT * FROM dept_emp;

--List the following details of each employee: employee number, 
--last name, first name, gender, and salary.

SELECT m.emp_no, m.last_name, m.first_name, m.gender, p.salary
FROM employees AS m
INNER JOIN salaries AS p ON
m.emp_no=p.emp_no;


--List employees who were hired in 1986.

SELECT * FROM employees WHERE employees.hire_date BETWEEN '1986-1-1 00:00:00' AND '1987-1-1 00:00:00';

--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, 
--last name, first name, and start and end employment dates.

SELECT m.dept_no, q.dept_name, m.emp_no, p.last_name, p.first_name, m.from_date, m.to_date
FROM dept_manager AS m
INNER JOIN departments AS q ON
m.dept_no=q.dept_no
INNER JOIN employees AS p ON
m.emp_no=p.emp_no
;

--List the department of each employee with the following information: 
--employee number, last name, first name, and department name.

SELECT m.emp_no, m.last_name, m.first_name, p.dept_name
FROM employees AS m
INNER JOIN dept_emp AS q ON
m.emp_no=q.emp_no
INNER JOIN departments AS p ON
q.dept_no=p.dept_no
;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT * FROM employees WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

--List all employees in the Sales department, including their employee number, 
--last name, first name, and department name.

SELECT m.emp_no, m.last_name, m.first_name, p.dept_name
FROM employees AS m
INNER JOIN dept_emp AS q ON
m.emp_no=q.emp_no
INNER JOIN departments AS p ON
q.dept_no=p.dept_no
WHERE p.dept_name = 'Sales'
;

--List all employees in the Sales and Development departments, 
--including their employee number, last name, first name, and department name.

SELECT m.emp_no, m.last_name, m.first_name, p.dept_name
FROM employees AS m
INNER JOIN dept_emp AS q ON
m.emp_no=q.emp_no
INNER JOIN departments AS p ON
q.dept_no=p.dept_no
WHERE p.dept_name = 'Sales' OR p.dept_name = 'Development'
;



--In descending order, list the frequency count of employee last names, 
--i.e., how many employees share each last name.

SELECT
   last_name,
   COUNT (emp_no)
FROM
   employees
GROUP BY
   last_name;
