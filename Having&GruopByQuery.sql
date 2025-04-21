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

-- 1. Count the number of employees in each position, but only include positions where there are more than 2 employees
SELECT position, COUNT(*) AS employee_count
FROM Employee
GROUP BY position
HAVING COUNT(*) > 2;

-- 2. Find the total salary paid to employees in each position, but only include positions where the total salary is greater than 200,000
SELECT position, SUM(salary) AS total_salary
FROM Employee
GROUP BY position
HAVING SUM(salary) > 200000;

-- 3. Find the average salary for each position, but only include positions where the average salary is greater than 60,000
SELECT position, AVG(salary) AS average_salary
FROM Employee
GROUP BY position
HAVING AVG(salary) > 60000;

-- 4. Find positions where the total salary is between 150,000 and 250,000
SELECT position, SUM(salary) AS total_salary
FROM Employee
GROUP BY position
HAVING SUM(salary) BETWEEN 150000 AND 250000;

-- 5. Find the maximum salary in each position, but only include positions where the maximum salary is greater than 70,000
SELECT position, MAX(salary) AS max_salary
FROM Employee
GROUP BY position
HAVING MAX(salary) > 70000;

-- 6. Find positions where the number of employees is less than 4 and the total salary is greater than 100,000
SELECT position, COUNT(*) AS employee_count, SUM(salary) AS total_salary
FROM Employee
GROUP BY position
HAVING COUNT(*) < 4 AND SUM(salary) > 100000;

-- 7. Find positions where the average salary is between 50,000 and 80,000
SELECT position, AVG(salary) AS average_salary
FROM Employee
GROUP BY position
HAVING AVG(salary) BETWEEN 50000 AND 80000;

-- 8. Find the positions with the highest number of employees
SELECT position, COUNT(*) AS employee_count
FROM Employee
GROUP BY position
HAVING COUNT(*) = (SELECT MAX(employee_count) FROM (SELECT COUNT(*) AS employee_count FROM Employee GROUP BY position) AS subquery);

-- 9. Find positions where the total salary is greater than the average salary of all positions
SELECT position, SUM(salary) AS total_salary
FROM Employee
GROUP BY position
HAVING SUM(salary) > (SELECT AVG(salary) FROM Employee);

-- 10. Find positions where the minimum salary is less than 50,000 and the total salary is greater than 100,000
SELECT position, MIN(salary) AS min_salary, SUM(salary) AS total_salary
FROM Employee
GROUP BY position
HAVING MIN(salary) < 50000 AND SUM(salary) > 100000;
``
