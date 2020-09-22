-- Creating tables for PH-EmployeeDB
-- CREATE TABLE departments (
--     dept_no VARCHAR(4) NOT NULL,
--     dept_name VARCHAR(40) NOT NULL,
--     PRIMARY KEY (dept_no),
--     UNIQUE (dept_name)
--);

--	 CREATE TABLE employees (
--	 emp_no INT NOT NULL,
--     birth_date DATE NOT NULL,
--     first_name VARCHAR NOT NULL,
--     last_name VARCHAR NOT NULL,
--     gender VARCHAR NOT NULL,
--     hire_date DATE NOT NULL,
--     PRIMARY KEY (emp_no)
--);
-- 	DROP TABLE dept_emp;
--	CREATE TABLE dept_emp (
--	emp_no INT NOT NULL,
--	dept_no VARCHAR NOT NULL, 
--	from_date DATE NOT NULL,
--	to_date DATE NOT NULL,
--	PRIMARY KEY (dept_no)	
--	);
--CREATE TABLE dept_manager (
--dept_no VARCHAR(4) NOT NULL,
--    emp_no INT NOT NULL,
--    from_date DATE NOT NULL,
--    to_date DATE NOT NULL,
--FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--FOREIGN KEY (dept_no) REFERENCES departments (dept_no),
--    PRIMARY KEY (emp_no, dept_no)
--);

--CREATE TABLE salaries (
--  emp_no INT NOT NULL,
--  salary INT NOT NULL,
--  from_date DATE NOT NULL,
--  to_date DATE NOT NULL,
--  FOREIGN KEY (emp_no) REFERENCES employees (emp_no),
--  PRIMARY KEY (emp_no)
--);

--	 CREATE TABLE managers (
--     dept_no VARCHAR NOT NULL,
--     emp_no VARCHAR NOT NULL,
--     from_date DATE NOT NULL,
--     to_date DATE NOT NULL,
--     PRIMARY KEY (emp_no, dept_no)
--);
	-- DROP TABLE titles;
	-- CREATE TABLE titles (
	-- emp_no INT NOT NULL,
    -- title VARCHAR NOT NULL,
    -- from_date DATE NOT NULL,
    -- to_date DATE NOT NULL
	-- );
--SELECT * FROM employees;
--SELECT * FROM departments;
--SELECT * FROM salaries;
--SELECT * FROM titles;
--SELECT * FROM managers;
--SELECT * FROM	dept_manager;
--SELECT * FROM dept_emp;

--SELECT first_name, last_name
--FROM employees
--WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
--
 --DROP TABLE retirement_info;
 --SELECT COUNT(first_name)
 --INTO retirement_info
 --FROM employees
 --WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31'
 --AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31');
 
 -- Create new table for retiring employees
--  DROP TABLE retirement_info;
--  SELECT emp_no, first_name, last_name
--  INTO retirement_info
--  FROM employees
--  WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
--  AND (hire_date BETWEEN '1985-01-01' AND '1988-12-31')
  
--SELECT * FROM retirement_info;
 -- Joining departments and dept_manager tables
--    SELECT departments.dept_name,
--      dept_manager.emp_no,
--      dept_manager.from_date,
--      dept_manager.to_date
-- FROM departments
-- INNER JOIN dept_manager as dm
-- ON (departments.dept_no = Dept_manager.dept_emp);

-- Joining retirement_info and dept_emp tables
-- Joining retirement_info and dept_emp tables

--SELECT * departments.dept_name,
--dept_manager.emp_no,
--dept_manager.from_date,
--dept_manager.to_date INTO current_emp FROM retirement_info as ri
--LEFT JOIN dept_emp as de
--ON ri.emp_no = de.emp_no

-- Employee count by department number
--  SELECT COUNT(ce.emp_no), de.dept_no
--  FROM current_emp as ce
--  LEFT JOIN dept_emp as de
--  ON ce.emp_no = de.emp_no
---GROUP BY de.dept_no;
--

---CHALLENGE Steps 1-5
	----Retrieve from Employees table
	--SELECT emp_no, first_name, last_name 
	--FROM Employees 	
	--WHERE birth_date BETWEEN '1952-01-01' AND '1955-12-31';
	
 --Create a new table using INTO clause and JOIN tables on primary key
--SELECT employees.emp_no, 
-- 	   employees.first_name, 
--	   employees.last_name, 
--	   titles.title,
--	   titles.from_date, 
--		titles.to_date
--INTO retirement_titles_2
--FROM employees 
--INNER JOIN titles
--ON employees.emp_no = titles.emp_no

--	CREATE TABLE retirement_titles (
--	   	emp_no INT NOT NULL,
--	 	first_name VARCHAR NOT NULL,
--		last_name VARCHAR NOT NULL,
--		title VARCHAR NOT NULL,
--		from_date DATE NOT NULL, 
--		to_date DATE NOT NULL,
--	FROM employees	
--	INNER JOIN reitrement_titles as titles
--	on employees.emp_no = titles.emp_no;
--	PRIMARY KEY (emp_no, title)
--);		

---- Use Dictinct with Orderby to remove duplicate rows
--SELECT DISTINCT ON (emp_no) emp_no, last_name, first_name, title
--INTO unique_titles
--FROM retirement_titles_2
--ORDER BY emp_no, to_date DESC

	CREATE TABLE mentorship_eligibility (
	   	emp_no INT NOT NULL,
	 	first_name VARCHAR NOT NULL,
		last_name VARCHAR NOT NULL,	
		birth_date DATE NOT NULL,
		title VARCHAR NOT NULL,
		from_date DATE NOT NULL, 
		to_date DATE NOT NULL
	FROM employees
	INNER JOIN titles as mentorship_eligiblity
	on employees.emp_no = titles.emp_no;
	PRIMARY KEY (emp_no, title)
);		

