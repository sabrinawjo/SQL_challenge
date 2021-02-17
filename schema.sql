create table departments(
	dept_no VARCHAR not NULL,
	dept_name VARCHAR not NULL
);
select * from departments;


create table dept_emp(
	emp_no INT not NULL,
	dept_no VARCHAR not NULL
);
select * from dept_emp;


create table dept_manager(
	dept_no VARCHAR not NULL,
	emp_no INT not NULL
);
select * from dept_manager;


create table employees(
	emp_no INT not NULL,
	emp_title_id VARCHAR(10) not NULL,
	birth_date VARCHAR not NULL,
	first_name VARCHAR not NULL,
	last_name VARCHAR not NULL,
	sex VARCHAR not NULL,
	hire_date VARCHAR not NULL
);
select * from employees;


create table salaries(
	emp_no INT not NULL,
	salary INT not NULL
);
select * from salaries;


create table titles(
	title_id VARCHAR not NULL,
	title VARCHAR not NULL
);
select * from titles;