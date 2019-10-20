/*
Analysis Query 1
List the following details of each employee: employee number, last name, first name, gender, and salary.
*/

select
e.emp_no
,e.last_name
,e.first_name
,e.gender
,s.salary
from employees as e
inner join salaries s on e.emp_no = s.emp_no

/*
Analysis Query 2
List employees who were hired in 1986.
*/

select
emp_no
,birth_date
,first_name
,last_name
,gender
,hire_date
from employees as e
where extract(year from hire_date) = 1986

/*
Analysis Query 3
List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
*/

select
d.dept_no
, d.dept_name
, mgr.emp_no as mgr_emp_no
, mgr.last_name as mgr_last_name
, mgr.first_name as mgr_first_name
, dm.from_date
, dm.to_date
from departments as d
inner join dept_manager dm on dm.dept_no = d.dept_no
inner join employees mgr on mgr.emp_no = dm.emp_no

/*
Analysis Query 4
List the department of each employee with the following information: employee number, last name, first name, and department name.
*/

select
e.emp_no
,e.last_name
,e.first_name
,dp.dept_name
from employees as e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments dp on dp.dept_no = de.dept_no

/*
Analysis Query 5
List all employees whose first name is "Hercules" and last names begin with "B."
*/

select
*
from employees as e
where first_name = 'Hercules'
and last_name like 'B%'

/*
Analysis Query 6
List all employees in the Sales department, including their employee number, last name, first name, and department name.
*/

select
e.emp_no
,e.last_name
,e.first_name
,dp.dept_name
from employees as e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments dp on dp.dept_no = de.dept_no
where dp.dept_name = 'Sales'

/*
Analysis Query 7
List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
*/

select
e.emp_no
,e.last_name
,e.first_name
,dp.dept_name
from employees as e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments dp on dp.dept_no = de.dept_no
where dp.dept_name = 'Sales' or dp.dept_name = 'Development'

/*
Analysis Query 8a = count descending
In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Instructions said descending but didn't specify if that was to be by last_name or count
so i have provided both.
*/

select
last_name
,count(last_name)
from employees
group by last_name
order by count(last_name) desc

/*
Analysis Query 8b = last_name descending
In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

Instructions said descending but didn't specify if that was to be by last_name or count
so i have provided both.
*/

select
last_name
,count(last_name)
from employees
group by last_name
order by last_name desc
