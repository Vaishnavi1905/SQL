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

-- 1. Select employees with salary greater than 60000  OR position is 'Analyst'
SELECT * FROM Employee WHERE salary > 60000 OR position = 'Analyst';

-- 2. Select employees with salary less than 50000 AND position contains 'Executive'
SELECT * FROM Employee WHERE salary < 50000 AND position LIKE '%Executive%';

-- 3. Select employees with names starting with 'A' OR salary greater than 80000
SELECT * FROM Employee WHERE name LIKE 'A%' OR salary > 80000;

-- 4. Select employees with salary between 60000 and 80000 AND position does not contain 'Manager'
SELECT * FROM Employee WHERE salary BETWEEN 60000 AND 80000 AND position NOT LIKE '%Manager%';

-- 5. Select employees with names ending with 'a' OR position contains 'Designer'
SELECT * FROM Employee WHERE name LIKE '%a' OR position LIKE '%Designer%';




