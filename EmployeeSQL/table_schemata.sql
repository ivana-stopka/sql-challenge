-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Removed "" from all to avoid syntax confusion later.
-- Added descriptions for each step.

-- Create table called "department". Primary key is "dept_no" - it's unique.
CREATE TABLE departments (
    dept_no VARCHAR   NOT NULL,
    dept_name VARCHAR   NOT NULL,
    CONSTRAINT pk_departments PRIMARY KEY (
        dept_no
     )
);

-- Imported data from department.csv to department table and checked successful.
SELECT * FROM departments

-- Created table called "dept_emp". This table has a many-many relationship so used two primary keys (composite key).
CREATE TABLE dept_emp (
    emp_no INT   NOT NULL,
    dept_no VARCHAR   NOT NULL,
    CONSTRAINT pk_dept_emp PRIMARY KEY (
        emp_no,dept_no
     )
);

-- Imported data from dept_emp.csv to dept_emp table and checked successful.
SELECT * FROM dept_emp

-- Created table called "dept_manager". This table has a many-many relationship so used two primary keys (composite key).
CREATE TABLE dept_manager (
    dept_no VARCHAR   NOT NULL,
    emp_no INT   NOT NULL,
    CONSTRAINT pk_dept_manager PRIMARY KEY (
        dept_no,emp_no
     )
);

-- Imported data from dept_manager.csv to dept_manager table and checked successful.
SELECT * FROM dept_manager

-- Created table called "employees". The primary key is emp_no (unique).
CREATE TABLE employees (
    emp_no INT   NOT NULL,
    emp_title VARCHAR   NOT NULL,
    birth_date VARCHAR   NOT NULL,
    first_name VARCHAR   NOT NULL,
    last_name VARCHAR   NOT NULL,
    sex VARCHAR   NOT NULL,
    hire_date VARCHAR   NOT NULL,
    CONSTRAINT pk_employees PRIMARY KEY (
        emp_no
     )
);

-- Imported data from employees.csv to employees table and checked successful.
SELECT * FROM employees

-- Created table called "salaries". The primary key is "emp_no" (unique).
CREATE TABLE salaries (
    emp_no INT   NOT NULL,
    salary INT   NOT NULL,
    CONSTRAINT pk_salaries PRIMARY KEY (
        emp_no
     )
);

-- Imported data from salaries.csv to salaries table and checked successful.
SELECT * FROM salaries

-- Created table called "titles". Primary key is "title_id" (unique).
CREATE TABLE titles (
    title_id VARCHAR   NOT NULL,
    title VARCHAR   NOT NULL,
    CONSTRAINT pk_titles PRIMARY KEY (
        title_id
     )
);

-- Imported data from titles.csv to titles table and checked successful.
SELECT * FROM titles

-- Identified the foreign keys (FK) to link the tables (see ERD.png for visual representation).
ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE dept_emp ADD CONSTRAINT fk_dept_emp_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_dept_no FOREIGN KEY(dept_no)
REFERENCES departments (dept_no);

ALTER TABLE dept_manager ADD CONSTRAINT fk_dept_manager_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

ALTER TABLE employees ADD CONSTRAINT fk_employees_emp_title FOREIGN KEY(emp_title)
REFERENCES titles (title_id);

ALTER TABLE salaries ADD CONSTRAINT fk_salaries_emp_no FOREIGN KEY(emp_no)
REFERENCES employees (emp_no);

-- Database setup complete
---------------------------------------------------------------------------------