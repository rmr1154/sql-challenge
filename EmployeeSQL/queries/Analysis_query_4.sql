

select
e.emp_no
,e.last_name
,e.first_name
,dp.dept_name
from employees as e
inner join dept_emp de on de.emp_no = e.emp_no
inner join departments dp on dp.dept_no = de.dept_no