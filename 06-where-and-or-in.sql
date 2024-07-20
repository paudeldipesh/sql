-- Create the table
CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(255) NOT NULL,
  company VARCHAR(255) NOT NULL
);

-- Insert data into the table
INSERT INTO employees (employee_name, company)
VALUES 
  ('Dipesh Paudel', 'Google'),
  ('Dinesh Paudel', 'Microsoft'),
  ('Sushil Lamichhane', 'Apple'),
  ('Ram Gupta', 'Apple'),
  ('Krishna Kafle', 'Google'),
  ('Sudip Kumal', 'Google'),
  ('Bipin Parajuli', 'Google');

-- Select all records
SELECT * FROM employees;

-- Select specific employee by company and name
SELECT employee_id
FROM employees
WHERE company = 'Google' 
  AND employee_name = 'Bipin Parajuli';

-- Count the number of employees with specific IDs
SELECT count(*) AS number_of_employees
FROM employees
WHERE ((employee_id >= 1 AND employee_id <= 5) OR (employee_id = 6));

-- Select employees from specific companies
SELECT * FROM employees 
WHERE company IN ('Google', 'Apple');

-- Select distinct companies
SELECT DISTINCT company
FROM employees;

-- Drop the table
DROP TABLE employees;
