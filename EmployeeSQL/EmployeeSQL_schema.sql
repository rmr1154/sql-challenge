
-- Drop table

-- DROP TABLE public.departments;

CREATE TABLE public.departments (
	dept_no varchar NULL,
	dept_name varchar NULL
);

-- Drop table

-- DROP TABLE public.dept_emp;

CREATE TABLE public.dept_emp (
	emp_no int4 NULL,
	dept_no varchar NULL,
	from_date date NULL,
	to_date date NULL
);

-- Drop table

-- DROP TABLE public.dept_manager;

CREATE TABLE public.dept_manager (
	dept_no varchar NULL,
	emp_no int4 NULL,
	from_date date NULL,
	to_date date NULL
);

-- Drop table

-- DROP TABLE public.employees;

CREATE TABLE public.employees (
	emp_no int4 NULL,
	birth_date date NULL,
	first_name varchar NULL,
	last_name varchar NULL,
	gender varchar(1) NULL,
	hire_date date NULL
);

-- Drop table

-- DROP TABLE public.salaries;

CREATE TABLE public.salaries (
	emp_no int4 NULL,
	salary numeric NULL,
	from_date date NULL,
	to_date date NULL
);

-- Drop table

-- DROP TABLE public.titles;

CREATE TABLE public.titles (
	emp_no int4 NULL,
	title varchar NULL,
	from_date date NULL,
	to_date date NULL
);
