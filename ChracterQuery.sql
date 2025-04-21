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
-- 1. UPPER(): Converts all characters in a string to uppercase.
SELECT UPPER(name) AS UpperCaseName
FROM Employee;

-- 2. LOWER(): Converts all characters in a string to lowercase.
SELECT LOWER(name) AS LowerCaseName
FROM Employee;

-- 3. CONCAT(): Combines two or more strings into a single string.
SELECT CONCAT(first_name, ' ', last_name) AS FullName
FROM Employee;

-- 4. LENGTH(): Returns the number of characters in a string.
SELECT LENGTH(name) AS NameLength
FROM Employee;

-- 5. SUBSTRING(): Extracts a part of a string, starting at a specified position.
SELECT SUBSTRING(name, 1, 3) AS SubName
FROM Employee;

-- 6. TRIM(): Removes leading and trailing spaces from a string.
SELECT TRIM(name) AS TrimmedName
FROM Employee;

-- 7. REPLACE(): Replaces occurrences of a substring with another substring.
SELECT REPLACE(name, 'a', 'o') AS ModifiedName
FROM Employee;

-- 8. INSTR(): Returns the position of the first occurrence of a substring in a string.
SELECT INSTR(name, 'a') AS PositionOfA
FROM Employee;

-- 9. RPAD(): Pads the right side of a string with a specified character to a certain length.
SELECT RPAD(name, 10, 'x') AS PaddedName
FROM Employee;

-- 10. LPAD(): Pads the left side of a string with a specified character to a certain length.
SELECT LPAD(name, 10, 'x') AS PaddedNameLeft
FROM Employee;

-- 11. ASCII(): Returns the ASCII value of the first character in a string.
SELECT ASCII(name) AS ASCIIValue
FROM Employee;

-- 12. CHAR(): Converts an ASCII value to its corresponding character.
SELECT CHAR(65) AS CharacterValue;

-- 13. INITCAP(): Capitalizes the first letter of each word in a string.
SELECT INITCAP(name) AS CapitalizedName
FROM Employee;
