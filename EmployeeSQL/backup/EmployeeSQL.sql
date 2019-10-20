--
-- PostgreSQL database dump
--

-- Dumped from database version 11.5
-- Dumped by pg_dump version 11.5

-- Started on 2019-10-19 11:33:09

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_with_oids = false;

--
-- TOC entry 196 (class 1259 OID 40961)
-- Name: departments; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.departments (
    dept_no character varying,
    dept_name character varying
);


ALTER TABLE public.departments OWNER TO postgres;

--
-- TOC entry 197 (class 1259 OID 40967)
-- Name: dept_emp; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_emp (
    emp_no integer,
    dept_no character varying,
    from_date date,
    to_date date
);


ALTER TABLE public.dept_emp OWNER TO postgres;

--
-- TOC entry 198 (class 1259 OID 40973)
-- Name: dept_manager; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.dept_manager (
    dept_no character varying,
    emp_no integer,
    from_date date,
    to_date date
);


ALTER TABLE public.dept_manager OWNER TO postgres;

--
-- TOC entry 201 (class 1259 OID 40991)
-- Name: employees; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.employees (
    emp_no integer,
    birth_date date,
    first_name character varying,
    last_name character varying,
    gender character varying(1),
    hire_date date
);


ALTER TABLE public.employees OWNER TO postgres;

--
-- TOC entry 200 (class 1259 OID 40985)
-- Name: salaries; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.salaries (
    emp_no integer,
    salary numeric,
    from_date date,
    to_date date
);


ALTER TABLE public.salaries OWNER TO postgres;

--
-- TOC entry 199 (class 1259 OID 40979)
-- Name: titles; Type: TABLE; Schema: public; Owner: postgres
--

CREATE TABLE public.titles (
    emp_no integer,
    title character varying,
    from_date date,
    to_date date
);


ALTER TABLE public.titles OWNER TO postgres;

-- Completed on 2019-10-19 11:33:10

--
-- PostgreSQL database dump complete
--

