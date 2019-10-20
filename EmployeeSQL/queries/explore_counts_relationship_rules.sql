select * 
from 
titles
where emp_no in
(
select emp_no from titles
group by emp_no, title
having count(emp_no) > 1
)



select
*
from dept_emp
where emp_no
in
( 
select
--count(emp_no)
emp_no
from dept_emp 
group by emp_no
having count(emp_no) > 1
)

select
*
from dept_emp
where dept_no
in
( 
select
--count(emp_no)
dept_no
from dept_emp 
group by dept_no
having count(dept_no) > 1
)


select
*
from dept_manager
where emp_no
in
( 
select
--count(emp_no)
emp_no
from dept_manager 
group by emp_no
having count(emp_no) > 1
)



select
*
from dept_manager
where dept_no
in
( 
select
--count(emp_no)
dept_no
from dept_manager 
group by dept_no
having count(dept_no) > 1
)


select
*
from salaries
where emp_no
in
( 
select
--count(emp_no)
emp_no
from salaries 
group by emp_no
having count(emp_no) > 1
)