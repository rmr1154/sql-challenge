

select
e.emp_no
,e.last_name
,e.first_name
,e.gender
,s.salary
from employees as e
inner join salaries s on e.emp_no = s.emp_no