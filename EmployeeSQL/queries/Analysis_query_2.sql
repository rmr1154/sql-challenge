

select
emp_no
,birth_date
,first_name
,last_name
,gender
,hire_date
from employees as e
where extract(year from hire_date) = 1986