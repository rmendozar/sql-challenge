DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_manager;
DROP TABLE employees;
DROP TABLE salaries;
DROP TABLE titles;

CREATE TABLE departments (
    dept_no VARCHAR(50),
    dept_name VARCHAR(50)
);

CREATE TABLE "dept_emp" (
    emp_no int,
    dept_no VARCHAR(50),
    from_date date,
    to_date date
);

CREATE TABLE dept_manager (
    dept_no VARCHAR(50),
    emp_no int,
    from_date date,
    to_date date
);

CREATE TABLE employees (
    emp_no int,
    birth_date date,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    gender VARCHAR(50),
    hire_date date
);

CREATE TABLE salaries (
    emp_no int,
    salary int,
    from_date date,
    to_date date
);

CREATE TABLE titles (
    emp_no int,
    title VARCHAR(50),
    from_date date,
    to_date date
);