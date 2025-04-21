SHOW DATABASES;
CREATE DATABASE my_database;
USE my_database;
CREATE TABLE Employee (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    position VARCHAR(50),
    salary DECIMAL(10, 2)
);
INSERT INTO Employee (name, position, salary) 
VALUES
('Alice', 'Manager', 75000.00),
('Bob', 'Developer', 60000.00),
('Charlie', 'Analyst', 50000.00),
('Diana', 'HR Specialist', 55000.00),
('Edward', 'Team Lead', 72000.00),
('Fiona', 'UI/UX Designer', 58000.00),
('George', 'QA Engineer', 51000.00),
('Hannah', 'Data Scientist', 85000.00),
('Ian', 'DevOps Engineer', 78000.00),
('Julia', 'Business Analyst', 62000.00),
('Kevin', 'Sales Executive', 48000.00),
('Laura', 'Product Manager', 90000.00),
('Michael', 'Marketing Specialist', 54000.00),
('Nina', 'Financial Advisor', 67000.00);
-- INNER JOIN
SELECT *
FROM Employee
INNER JOIN Department ON Employee.department_id = Department.id;

-- LEFT JOIN
SELECT *
FROM Employee
LEFT JOIN Department ON Employee.department_id = Department.id;

-- RIGHT JOIN
SELECT *
FROM Employee
RIGHT JOIN Department ON Employee.department_id = Department.id;

-- FULL JOIN
SELECT *
FROM Employee
FULL JOIN Department ON Employee.department_id = Department.id;

-- CROSS JOIN
SELECT *
FROM Employee
CROSS JOIN Department;

-- SELF JOIN
SELECT a.name AS Employee, b.name AS Manager
FROM Employee a
INNER JOIN Employee b ON a.manager_id = b.id;

-- NATURAL JOIN
SELECT *
FROM Employee
NATURAL JOIN Department;
