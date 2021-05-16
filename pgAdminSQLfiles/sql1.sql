
 
DROP TABLE departments;
DROP TABLE dept_emp;
DROP TABLE dept_Mgr;
DROP TABLE employees;
DROP TABLE saleries;
DROP TABLE titles;

--Create list for Departments

CREATE TABLE DEPARTMENTS (
	dept_no VARCHAR (8)PRIMARY KEY NOT NULL,
	dept_name VARCHAR (8)
);																										

--Table for each Deparment for each Employee

CREATE TABLE dept_emp(
	emp_no VARCHAR(35) NOT NULL,
	dept_no  VARCHAR(8) NOT NULL,
	last_name VARCHAR(40) NOT NULL,
	first_name VARCHAR(40) NOT NULL,
	dept_name VARCHAR(8) NOT NULL
);																																												

ALTER TABLE dept_emp ADD PRIMARY KEY (emp_no);

-- Create Table for Manager for each Deparment

CREATE TABLE dept_Mgr( 
    dept_no VARCHAR(8) NOT NULL,
	emp_no INT NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);
ALTER TABLE dept_Mgr ADD FOREIGN KEY (dept_no) REFERENCES departments(dept_no);
ALTER TABLE dept_mgr ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

--Create Table for Employees

CREATE TABLE employees (
	emp_no INT PRIMARY KEY NOT NULL,
	last_name VARCHAR(35) NOT NULL,
	first_name VARCHAR(35) NOT NULL,
	gender VARCHAR(1)NOT NULL,
	salary VARCHAR NOT NULL,
	hire_date DATE NOT NULL
);																								


ALTER TABLE employees ADD PRIMARY KEY (emp_no);
ALTER TABLE  employees ADD FOREIGN KEY (emp_title_id) REFERENCES titles(title_id);

-- Create Table for Saleries

CREATE TABLE saleries(
	emp_no INT NOT NULL,
    salary INT NOT NULL,
	from_date DATE NOT NULL,
    to_date DATE NOT NULL
);
FOREIGN KEY emp_no REFERENCES employees (emp_no)
ALTER TABLE saleries ADD FOREIGN KEY (emp_no) REFERENCES employees(emp_no);

-- Create table for Titles

CREATE TABLE title
    emp_no INT NOT NULL,
	title_id VARCHAR(30) NOT NULL,
	from_date DATE NOT NULL,
	to_date DATE NOT NULL
);
ALTER TABLE titles ADD PRIMARY KEY (title_id);



--List the following details of each employee: employee number, last name, first name, sex, and salary.




--List first name, last name, and hire date for employees who were hired in 1986.



--List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.



--List the department of each employee with the following information: employee number, last name, first name, and department name.



--List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."



--List all employees in the Sales department, including their employee number, last name, first name, and department name.



--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.


--In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.