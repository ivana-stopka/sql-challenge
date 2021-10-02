# SQL Challenge - Employee Database

## Database Creation

The following six CSV files were provided containing employee data (see data folder):
 * departments.csv
 * dept_emp.csv
 * dept_manager.csv
 * employees.csv
 * salaries.csv
 * titles.csv

Upon inspection of the CSV files, the following ERD of the tables was produced using [http://www.quickdatabasediagrams.com](http://www.quickdatabasediagrams.com).

![image](https://user-images.githubusercontent.com/86386401/135713136-8e3e4d96-32b2-400c-a27d-0f3cbc115e06.png)

Note: The above image is stored in the EmployeeSQL folder as ERD.png

From quickdatabasediagrams.com the table schema was exported to Postgresql and included the specfied data types, primary keys, foreign keys and the relationships between them (one-to-many, many-to-many etc). See QuickDBD-export.sql file in EmployeeSQL folder for the raw export file.

Once in postgresql (pgAdmin), the imported table schema was modified to exclude the "", CSV files imported after each table created with the foreign key contstraints/links between tables run as a last step. Each table checked for correct data and the tabel schema saved in EmployeeSQL folder as table_schemata.sql

## Data Analysis

With the database ready, the following analysis was undertaken. Run the file queries.sql which is contained in EmployeeSQL folder. Tables with FIRST 5 results shown for each below.

1. List the following details of each employee: employee number, last name, first name, sex, and salary.

![image](https://user-images.githubusercontent.com/86386401/135713507-8909fc19-d929-4949-a88b-10d447fca642.png)

2. List first name, last name, and hire date for employees who were hired in 1986.

![image](https://user-images.githubusercontent.com/86386401/135713527-531c72fc-eff9-45ed-a048-a1144989725e.png)

3. List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name.

![image](https://user-images.githubusercontent.com/86386401/135713537-bec254b7-20a6-473f-850c-e4eeee739df3.png)

4. List the department of each employee with the following information: employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/86386401/135713555-0f147e4c-7b8f-4f00-af92-fc7ec21d04cd.png)

5. List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."

![image](https://user-images.githubusercontent.com/86386401/135713561-ce25ad1b-ff6c-4392-a8df-a0d99d5291c2.png)

6. List all employees in the Sales department, including their employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/86386401/135713586-9f7a8180-77de-4b4f-8bd5-623bf44f1df1.png)

7. List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

![image](https://user-images.githubusercontent.com/86386401/135713598-cd1986f6-327f-4249-8e41-5f07bef6b81f.png)

8. In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

![image](https://user-images.githubusercontent.com/86386401/135713611-304a9cae-6edd-4fdf-9762-e72976ed875d.png)

