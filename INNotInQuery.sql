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

-- 1. Select employees whose positions are NOT IN ('HR Specialist', 'QA Engineer', 'Data Scientist')
SELECT * FROM Employee WHERE position NOT IN ('HR Specialist', 'QA Engineer', 'Data Scientist');

-- 2. Select employees whose names are IN ('Fiona', 'George', 'Hannah', 'Ian')
SELECT * FROM Employee WHERE name IN ('Fiona', 'George', 'Hannah', 'Ian');

-- 3. Select employees whose salaries are IN (51000, 60000, 72000, 85000)
SELECT * FROM Employee WHERE salary IN (51000, 60000, 72000, 85000);

-- 4. Select employees whose positions are NOT IN ('Marketing Specialist', 'Sales Executive', 'Product Manager')
SELECT * FROM Employee WHERE position NOT IN ('Marketing Specialist', 'Sales Executive', 'Product Manager');

-- 5. Select employees whose names are NOT IN ('Julia', 'Kevin', 'Laura')
SELECT * FROM Employee WHERE name NOT IN ('Julia', 'Kevin', 'Laura');

-- 6. Select employees whose salaries are NOT IN (54000, 58000, 67000)
SELECT * FROM Employee WHERE salary NOT IN (54000, 58000, 67000);

-- 7. Select employees whose positions are IN ('Developer', 'Business Analyst', 'DevOps Engineer')
SELECT * FROM Employee WHERE position IN ('Developer', 'Business Analyst', 'DevOps Engineer');




