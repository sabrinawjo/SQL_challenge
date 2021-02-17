-- List the following details of each employee: employee number, last name, first name, sex, and salary.
create view Hw7_Q1 AS
select e.emp_no, e.last_name, e.first_name, e.sex, s.salary
from employees AS e
inner join salaries AS s on
s.emp_no = e.emp_no;

-- List first name, last name, and hire date for employees who were hired in 1986.
create view Hw7_Q2 AS
select e.first_name, e.last_name, e.hire_date
from employees AS e
where right(hire_date, 4) = '1986';

-- List the manager of each department with the following information: 
-- department number, department name, the manager's employee number, last name, first name.
create view Hw7_Q3 AS
select m.dept_no, d.dept_name, m.emp_no, e.last_name, e.first_name
from employees AS e
join dept_manager AS m
	on e.emp_no = m.emp_no
join departments AS d
	on m.dept_no = d.dept_no;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
create view Hw7_Q4 AS
select ep.emp_no, e.last_name, e.first_name, d.dept_name
from employees AS e
join dept_emp AS ep
	on e.emp_no = ep.emp_no
join departments AS d
	on ep.dept_no = d.dept_no;

-- List first name, last name, and sex for employees 
-- whose first name is "Hercules" and last names begin with "B."
create view Hw7_Q5 AS
select e.first_name, e.last_name, e.sex
from employees AS e
where first_name = 'Hercules'
and last_name LIKE 'B%';

-- List all employees in the Sales department, 
-- including their employee number, last name, first name, and department name.
create view Hw7_Q6 AS
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees AS e
join dept_emp AS dp
	on e.emp_no = dp.emp_no
join departments AS d
	on dp.dept_no = d.dept_no
where dept_name = 'Sales';

-- List all employees in the Sales and Development departments, 
-- including their employee number, last name, first name, and department name.
create view Hw7_Q7 AS
select e.emp_no, e.last_name, e.first_name, d.dept_name
from employees AS e
join dept_emp AS dp
	on e.emp_no = dp.emp_no
join departments AS d
	on dp.dept_no = d.dept_no
where dept_name = 'Sales'
or dept_name = 'Development';

-- In descending order, list the frequency count of employee last names, 
-- i.e., how many employees share each last name.
create view Hw7_Q8 AS
select last_name, count(*) Count_of_last_name
from employees
group by last_name
order by Count_of_last_name desc;