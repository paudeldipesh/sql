CREATE TABLE employees (
  employee_id SERIAL PRIMARY KEY,
  employee_name VARCHAR(255) NOT NULL
);

INSERT INTO employees (employee_name)
VALUES ('Dipesh Paudel'),
       ('Dinesh Paudel'),
       ('Dev Paudel');

ALTER TABLE employees
ADD COLUMN employee_salary DECIMAL(10,2);

UPDATE employees
SET employee_salary = 5000.00
WHERE employee_id = 1;

UPDATE employees
SET employee_salary = 4000.00
WHERE employee_id = 2;

UPDATE employees
SET employee_salary = 3000.00
WHERE employee_id = 3;

SELECT * FROM employees;

SELECT employee_id AS id, employee_name AS name, employee_salary AS salary,
  CASE
    WHEN employee_salary >= 4000.00 THEN 'Good'
    ELSE 'Bad'
  END AS salary_rating
FROM employees WHERE employee_salary BETWEEN 3500 AND 5500;