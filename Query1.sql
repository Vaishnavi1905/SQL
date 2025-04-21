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

-- 1. Select all records from the Employee table
SELECT * FROM Employee;

-- 2. Select employees with salary greater than 60,000
SELECT * FROM Employee WHERE salary > 60000;

-- 3. Select employees with the position 'Analyst'
SELECT * FROM Employee WHERE position = 'Analyst';

-- 4. Find employees with positions that contain 'Manager'
SELECT * FROM Employee WHERE position LIKE '%Manager%';

-- 5. Select employees whose names start with 'A'
SELECT * FROM Employee WHERE name LIKE 'A%';

-- 6. Select employees with salaries between 50,000 and 75,000
SELECT * FROM Employee WHERE salary BETWEEN 50000 AND 75000;

-- 7. Select employees and sort them by salary in descending order
SELECT * FROM Employee ORDER BY salary DESC;

-- 8. Count the number of employees in each position
SELECT position, COUNT(*) AS employee_count 
FROM Employee 
GROUP BY position;

-- 9. Calculate the average salary of all employees
SELECT AVG(salary) AS average_salary FROM Employee;

-- 10. Select employees whose names end with 'a'
SELECT * FROM Employee WHERE name LIKE '%a';

-- 11. Update the salary of the employee 'Alice' to 80,000
UPDATE Employee 
SET salary = 80000 
WHERE name = 'Alice';

-- 12. Delete employees with salaries less than 50,000
DELETE FROM Employee WHERE salary < 50000;

-- 13. Group employees by positions and calculate the total salary for each position
SELECT position, SUM(salary) AS total_salary 
FROM Employee 
GROUP BY position;








