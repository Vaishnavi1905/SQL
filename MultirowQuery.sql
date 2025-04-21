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

-- 1. Select employees with the top 3 highest salaries
SELECT * FROM Employee 
ORDER BY salary DESC
LIMIT 3;

-- 2. Find employees whose salary is higher than the average salary of all employees
SELECT * FROM Employee 
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- 3. Select employees whose salary is between the highest and second-highest salaries
SELECT * FROM Employee 
WHERE salary BETWEEN 
    (SELECT MAX(salary) FROM Employee) 
    AND (SELECT MAX(salary) FROM Employee);

-- 4. Find employees whose salary is between the lowest and highest salary
SELECT * FROM Employee 
WHERE salary BETWEEN 
    (SELECT MIN(salary) FROM Employee) 
    AND (SELECT MAX(salary) FROM Employee);

-- 5. Find the employee with the second-highest salary
SELECT * FROM Employee 
WHERE salary = 
    (SELECT MAX(salary) FROM Employee 
     WHERE salary < (SELECT MAX(salary) FROM Employee));

-- 6. Find employees whose salary is closest to the average salary
SELECT * FROM Employee 
WHERE ABS(salary - (SELECT AVG(salary) FROM Employee)) = 
    (SELECT MIN(ABS(salary - (SELECT AVG(salary) FROM Employee)))) 
;

-- 7. Select employees whose salary is higher than the lowest salary in the database
SELECT * FROM Employee 
WHERE salary > (SELECT MIN(salary) FROM Employee);

-- 8. Select employees whose salary is within the 25th and 75th percentile
SELECT * FROM Employee 
WHERE salary BETWEEN 
    (SELECT MIN(salary) FROM Employee) 
    AND (SELECT MAX(salary) FROM Employee);

-- 9. Find employees whose salary is within the top 50% of salaries
SELECT * FROM Employee 
WHERE salary >= (SELECT salary 
                FROM Employee 
                ORDER BY salary 
                LIMIT 1 
                OFFSET 5);

-- 10. Find employees with a salary higher than 60000 and whose position starts with 'D' or 'M'
SELECT * FROM Employee 
WHERE salary > 60000 AND position LIKE 'D%' OR position LIKE 'M%';
