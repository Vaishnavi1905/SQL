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

-- 1. Select employees whose names contain exactly two 'a' characters
SELECT * FROM Employee WHERE name LIKE '%a%a%';

-- 2. Select employees whose positions start with any character followed by 'anager' (e.g., 'Manager', 'Tanager')
SELECT * FROM Employee WHERE position LIKE '_anager';

-- 3. Select employees whose names have 'e' as the second character and end with 'a'
SELECT * FROM Employee WHERE name LIKE '_e%a';

-- 4. Select employees whose positions have exactly five characters
SELECT * FROM Employee WHERE position LIKE '_____';

-- 5. Select employees whose names start and end with the same letter
SELECT * FROM Employee WHERE name LIKE CONCAT(SUBSTRING(name, 1, 1), '%', SUBSTRING(name, 1, 1));

-- 6. Select employees whose positions contain 'a' followed immediately by a consonant
SELECT * FROM Employee WHERE position LIKE '%a[^aeiou]%';

-- 7. Select employees whose names contain the pattern 'a_a' (an 'a', any character, followed by another 'a')
SELECT * FROM Employee WHERE name LIKE '%a_a%';

-- 8. Select employees whose positions start with 'D' and end with 'r'
SELECT * FROM Employee WHERE position LIKE 'D%r';

-- 9. Select employees whose names contain alternating vowels and consonants (e.g., 'Alice', 'Charlie')
SELECT * FROM Employee WHERE name REGEXP '([aeiou][^aeiou]|[^aeiou][aeiou])+';

-- 10. Select employees whose positions contain at least three 'e' characters
SELECT * FROM Employee WHERE position LIKE '%e%e%e%';





