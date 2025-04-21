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
-- 1. ABS(): Returns the absolute value of a number.
SELECT ABS(salary) AS AbsoluteSalary
FROM Employee;

-- 2. CEIL() or CEILING(): Returns the smallest integer greater than or equal to a number.
SELECT CEIL(salary) AS CeilingSalary
FROM Employee;

-- 3. FLOOR(): Returns the largest integer less than or equal to a number.
SELECT FLOOR(salary) AS FloorSalary
FROM Employee;

-- 4. ROUND(): Rounds a number to a specified number of decimal places.
SELECT ROUND(salary, 2) AS RoundedSalary
FROM Employee;

-- 5. TRUNCATE(): Truncates a number to a specified number of decimal places without rounding.
SELECT TRUNCATE(salary, 2) AS TruncatedSalary
FROM Employee;

-- 6. MOD(): Returns the remainder when one number is divided by another (modulus).
SELECT MOD(salary, 10000) AS SalaryMod
FROM Employee;

-- 7. SIGN(): Returns the sign of a number (1 for positive, -1 for negative, 0 for zero).
SELECT SIGN(salary) AS SalarySign
FROM Employee;

-- 8. POWER(): Returns the value of a number raised to the power of another number.
SELECT POWER(salary, 2) AS SalarySquared
FROM Employee;

-- 9. SQRT(): Returns the square root of a number.
SELECT SQRT(salary) AS SalarySquareRoot
FROM Employee;

-- 10. EXP(): Returns the value of Euler's number (e) raised to the power of a given number.
SELECT EXP(salary / 10000) AS SalaryExp
FROM Employee;

-- 11. LN(): Returns the natural logarithm (base e) of a number.
SELECT LN(salary) AS SalaryLog
FROM Employee;

-- 12. LOG(): Returns the logarithm of a number with a specified base.
SELECT LOG(10, salary) AS SalaryLogBase10
FROM Employee;
