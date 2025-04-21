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
-- 1. SYSDATE() / CURRENT_DATE() : Returns current date and time
SELECT SYSDATE() AS CurrentDateTime;

-- 2. NOW() : Returns current date and time
SELECT NOW() AS CurrentDateTime;

-- 3. CURDATE() : Returns current date
SELECT CURDATE() AS CurrentDate;

-- 4. DATE() : Extracts the date part from a datetime value
SELECT DATE(NOW()) AS CurrentDate;

-- 5. YEAR() : Extracts the year part from a date
SELECT YEAR(hire_date) AS HireYear
FROM Employee;

-- 6. MONTH() : Extracts the month part from a date
SELECT MONTH(hire_date) AS HireMonth
FROM Employee;

-- 7. DAY() : Extracts the day part from a date
SELECT DAY(hire_date) AS HireDay
FROM Employee;

-- 8. WEEK() : Returns the week number of a date
SELECT WEEK(hire_date) AS HireWeek
FROM Employee;

-- 9. DAYNAME() : Returns the weekday name for a given date
SELECT DAYNAME(hire_date) AS WeekdayName
FROM Employee;

-- 10. DAYOFWEEK() : Returns the weekday index of a date
SELECT DAYOFWEEK(hire_date) AS WeekdayIndex
FROM Employee;

-- 11. MONTHNAME() : Returns the month name for a given date
SELECT MONTHNAME(hire_date) AS MonthName
FROM Employee;

-- 12. DATE_ADD() : Adds a time interval to a date
SELECT DATE_ADD(hire_date, INTERVAL 1 YEAR) AS OneYearLater
FROM Employee;

-- 13. DATE_SUB() : Subtracts a time interval from a date
SELECT DATE_SUB(hire_date, INTERVAL 1 MONTH) AS OneMonthBefore
FROM Employee;

-- 14. DATEDIFF() : Returns the difference in days between two dates
SELECT DATEDIFF(CURDATE(), hire_date) AS DaysSinceHired
FROM Employee;

-- 15. TIMESTAMPDIFF() : Returns the difference between two dates in a specified unit
SELECT TIMESTAMPDIFF(YEAR, hire_date, CURDATE()) AS YearsWithCompany
FROM Employee;
