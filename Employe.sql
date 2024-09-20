
SHOW DATABASES;

CREATE DATABASE lab_13_SEP;

USE lab_13_SEP;

CREATE TABLE Employees (
    emp_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department_id INT,
    salary DECIMAL(10, 2)
);

CREATE TABLE Departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50),
    location VARCHAR(50)
);

CREATE TABLE Projects (
    proj_id INT PRIMARY KEY,
    proj_name VARCHAR(50),
    dept_id INT,
    budget DECIMAL(15, 2),
    FOREIGN KEY (dept_id) REFERENCES Departments(dept_id)
);

CREATE TABLE Works_On (
    emp_id INT,
    proj_id INT,
    hours DECIMAL(5, 2),
    PRIMARY KEY (emp_id, proj_id),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id),
    FOREIGN KEY (proj_id) REFERENCES Projects(proj_id)
);

CREATE TABLE Salaries (
    emp_id INT,
    year INT,
    annual_salary DECIMAL(10, 2),
    PRIMARY KEY (emp_id, year),
    FOREIGN KEY (emp_id) REFERENCES Employees(emp_id)
);

SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT * FROM Projects;
SELECT * FROM Works_On;
SELECT * FROM Salaries;

INSERT INTO Departments (dept_id, dept_name, location) VALUES
(1, 'HR', 'New York'),
(2, 'IT', 'San Francisco'),
(3, 'Finance', 'Chicago');

INSERT INTO Employees (emp_id, name, age, department_id, salary) VALUES
(101, 'Alice', 30, 1, 60000),
(102, 'Bob', 40, 2, 80000),
(103, 'Charlie', 35, 3, 75000),
(104, 'David', 28, 2, 70000),
(105, 'Eve', 38, 1, 65000);

INSERT INTO Projects (proj_id, proj_name, dept_id, budget) VALUES
(1001, 'Project A', 2, 200000),
(1002, 'Project B', 2, 300000),
(1003, 'Project C', 1, 150000),
(1004, 'Project D', 3, 400000);

INSERT INTO Works_On (emp_id, proj_id, hours) VALUES
(101, 1003, 20),
(102, 1001, 35),
(103, 1004, 25),
(104, 1001, 40),
(105, 1003, 30);

INSERT INTO Salaries (emp_id, year, annual_salary) VALUES
(101, 2020, 55000),
(101, 2021, 60000),
(102, 2020, 75000),
(102, 2021, 80000),
(103, 2020, 70000),
(103, 2021, 75000),
(104, 2020, 65000),
(104, 2021, 70000),
(105, 2020, 60000),
(105, 2021, 65000);

-- JOIN
SELECT * FROM Employees INNER JOIN Departments ON 
Employees.department_id = Departments.dept_id;
SELECT * FROM Projects INNER JOIN Departments ON 
Projects.dept_id = Departments.dept_id;
SELECT * FROM Works_On INNER JOIN Employees ON 
Works_On.emp_id = Employees.emp_id;
SELECT * FROM Employees INNER JOIN Salaries ON 
Employees.emp_id = Salaries.emp_id;
SELECT * FROM Projects INNER JOIN Works_On ON 
Projects.proj_id = Works_On.proj_id;

-- LEFT JOIN
SELECT * FROM Employees LEFT JOIN Departments ON 
Employees.department_id = Departments.dept_id;
SELECT * FROM Projects LEFT JOIN Departments ON 
Projects.dept_id = Departments.dept_id;
SELECT * FROM Works_On LEFT JOIN Employees ON Works_On.emp_id 
= Employees.emp_id;
SELECT * FROM Employees LEFT JOIN Salaries ON 
Employees.emp_id = Salaries.emp_id;
SELECT * FROM Projects LEFT JOIN Works_On ON Projects.proj_id 
= Works_On.proj_id;

-- RIGHT JOIN
SELECT * FROM Employees RIGHT JOIN Departments ON 
Employees.department_id = Departments.dept_id;
SELECT * FROM Projects RIGHT JOIN Departments ON 
Projects.dept_id = Departments.dept_id;
SELECT * FROM Works_On RIGHT JOIN Employees ON 
Works_On.emp_id = Employees.emp_id;
SELECT * FROM Employees RIGHT JOIN Salaries ON 
Employees.emp_id = Salaries.emp_id;
SELECT * FROM Projects RIGHT JOIN Works_On ON 
Projects.proj_id = Works_On.proj_id;
-- -- FULL OUTER JOIN
-- SELECT * FROM Employees FULL OUTER JOIN Departments ON Employees.department_id = Departments.dept_id; 
-- SELECT * FROM Projects FULL OUTER JOIN Departments ON 
-- Projects.dept_id = Departments.dept_id;
-- SELECT * FROM Works_On FULL OUTER JOIN Employees ON 
-- Works_On.emp_id = Employees.emp_id;
-- SELECT * FROM Employees FULL OUTER JOIN Salaries ON 
-- Employees.emp_id = Salaries.emp_id;
-- SELECT * FROM Projects FULL OUTER JOIN Works_On ON 
-- Projects.proj_id = Works_On.proj_id;


SELECT * FROM Employees LEFT JOIN Departments ON 
Employees.department_id = Departments.dept_id UNION
SELECT * FROM Employees RIGHT JOIN Departments ON 
Employees.department_id = Departments.dept_id;
SELECT * FROM Projects LEFT JOIN Departments ON 
Projects.dept_id = Departments.dept_id UNION
SELECT * FROM Projects RIGHT JOIN Departments ON 
Projects.dept_id = Departments.dept_id;
SELECT * FROM Works_On LEFT JOIN Employees ON Works_On.emp_id 
= Employees.emp_id UNION
SELECT * FROM Works_On RIGHT JOIN Employees ON 
Works_On.emp_id = Employees.emp_id;
SELECT * FROM Employees LEFT JOIN Salaries ON 
Employees.emp_id = Salaries.emp_id UNION
SELECT * FROM Employees RIGHT JOIN Salaries ON 
Employees.emp_id = Salaries.emp_id;
SELECT * FROM Projects LEFT JOIN Works_On ON Projects.proj_id 
= Works_On.proj_id UNION
SELECT * FROM Projects RIGHT JOIN Works_On ON 
Projects.proj_id = Works_On.proj_id;





