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

-- 1. Find employees whose salary is greater than the average salary of all employees
SELECT * 
FROM Employee
WHERE salary > (SELECT AVG(salary) FROM Employee);

-- 2. Find employees whose salary is greater than the maximum salary of a specific position (e.g., 'Developer')
SELECT * 
FROM Employee
WHERE salary > (SELECT MAX(salary) FROM Employee WHERE position = 'Developer');

-- 3. Find the employee with the second-highest salary
SELECT * 
FROM Employee
WHERE salary = 
    (SELECT MAX(salary) FROM Employee WHERE salary < (SELECT MAX(salary) FROM Employee));

-- 4. Find employees whose salary is within the range of the lowest and highest salary
SELECT * 
FROM Employee
WHERE salary BETWEEN (SELECT MIN(salary) FROM Employee) AND (SELECT MAX(salary) FROM Employee);

-- 5. Find employees who earn more than the average salary of their position
SELECT * 
FROM Employee e
WHERE salary > 
    (SELECT AVG(salary) FROM Employee WHERE position = e.position);

-- 6. Find positions where the total salary of all employees is greater than a specific amount (e.g., 200,000)
SELECT position 
FROM Employee
GROUP BY position
HAVING SUM(salary) > (SELECT 200000);

-- 7. Find employees with a salary greater than the average salary of all employees in the 'Developer' position
SELECT * 
FROM Employee
WHERE salary > 
    (SELECT AVG(salary) FROM Employee WHERE position = 'Developer');

-- 8. Find the employee with the lowest salary in the company
SELECT * 
FROM Employee
WHERE salary = (SELECT MIN(salary) FROM Employee);

-- 9. Find employees whose salary is higher than the salary of a specific employee (e.g., 'Alice')
SELECT * 
FROM Employee
WHERE salary > (SELECT salary FROM Employee WHERE name = 'Alice');

-- 10. Find positions where the number of employees is greater than the average number of employees across all positions
SELECT position 
FROM Employee
GROUP BY position
HAVING COUNT(*) > 
    (SELECT AVG(employee_count) 
     FROM (SELECT COUNT(*) AS employee_count FROM Employee GROUP BY position) AS subquery);
