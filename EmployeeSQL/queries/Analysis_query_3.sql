

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