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
-- 1. NVL() : Replaces NULL value with a specified value
SELECT NVL(salary, 0) AS SalaryWithDefault
FROM Employee;

-- 2. COALESCE() : Returns the first non-NULL value in the list
SELECT COALESCE(salary, bonus, 0) AS FirstNonNullValue
FROM Employee;

-- 3. NULLIF() : Returns NULL if two expressions are equal
SELECT NULLIF(salary, bonus) AS SalaryVsBonus
FROM Employee;

-- 4. CASE : Provides conditional logic within a query
SELECT 
    name,
    CASE
        WHEN salary > 70000 THEN 'High Salary'
        WHEN salary BETWEEN 50000 AND 70000 THEN 'Medium Salary'
        ELSE 'Low Salary'
    END AS SalaryCategory
FROM Employee;

-- 5. TO_CHAR() : Converts a date or number to a string with a specific format
SELECT TO_CHAR(hire_date, 'DD/MM/YYYY') AS FormattedDate
FROM Employee;

-- 6. TO_DATE() : Converts a string to a date
SELECT TO_DATE('2025-12-31', 'YYYY-MM-DD') AS ConvertedDate;

-- 7. TO_NUMBER() : Converts a string to a number
SELECT TO_NUMBER('123.45') AS ConvertedNumber;

-- 8. CAST() : Converts a value from one data type to another
SELECT CAST(salary AS VARCHAR(10)) AS SalaryAsString
FROM Employee;

-- 9. EXTRACT() : Extracts part of a date (e.g., year)
SELECT EXTRACT(YEAR FROM hire_date) AS HireYear
FROM Employee;

-- 10. ROWNUM : Assigns a unique number to each row (Oracle specific)
SELECT ROWNUM, name, salary
FROM Employee;

-- 11. USER : Returns the current database user
SELECT USER AS CurrentUser;

-- 12. SYS_GUID() : Generates a globally unique identifier (Oracle specific)
SELECT SYS_GUID() AS UniqueID
FROM dual;

-- 13. GREATEST() : Returns the largest value from a list of expressions
SELECT GREATEST(salary, bonus) AS MaxSalaryOrBonus
FROM Employee;

-- 14. LEAST() : Returns the smallest value from a list of expressions
SELECT LEAST(salary, bonus) AS MinSalaryOrBonus
FROM Employee;
