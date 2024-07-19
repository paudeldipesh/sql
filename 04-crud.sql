-- Create a table named 'users' to store user information

CREATE TABLE users (
    id SERIAL PRIMARY KEY,  -- Auto-incrementing unique identifier for user ID
    name VARCHAR(255) NOT NULL,  -- Username
    age INTEGER NOT NULL   -- User age
);


-- Insert sample user data into the 'users' table

INSERT INTO users (name, age)
VALUES
    ('John Doe', 30),
    ('Jane Smith', 25),
    ('Alice Johnson', 15),
    ('Bob Williams', 42),
    ('Charlie Brown', 70),
    ('Diana Miller', 2),
    ('Emily Garcia', 85),
    ('Frank Hernandez', 38),
    ('Grace Anderson', 6),
    ('Henry Baker', 55);


-- Select all user data from the 'users' table, ordered by ID in ascending order

SELECT * FROM users
ORDER BY id ASC;


-- Count the total number of users in the 'users' table

SELECT COUNT(*) AS total_users
FROM users;


-- Select all data for users aged 55 or older from the 'users' table

SELECT * FROM users
WHERE age >= 55;


-- Update user data in the 'users' table (replace ID 1 with the actual ID 
-- you want to modify)

UPDATE users SET name = 'Dipesh Paudel', age = 23 WHERE id = 1;


-- Delete all rows from the 'users' table (be cautious, this is permanent!)

DELETE FROM users;


-- Delete a specific user from the 'users' table (if the user with ID 9 exists)

DELETE FROM users
WHERE id = 9;


-- Drop the 'users' table (this will permanently remove the table and its data)

DROP TABLE users;
