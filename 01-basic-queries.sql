-- Creates the users table with three columns: id, name, and age
CREATE TABLE users (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  age INTEGER
);

-- Add a column 'is_admin' to the users table to indicate admin status
ALTER TABLE users
ADD COLUMN is_admin BOOLEAN DEFAULT FALSE;

-- Update all existing users to set 'is_admin' to FALSE (optional)
-- This can be omitted if you set a default value in the ALTER TABLE statement.
UPDATE users
SET is_admin = FALSE;

-- Inserts a record into the users table with id 1, name 'Dipesh Paudel', and age 23
INSERT INTO users (id, name, age) VALUES (1, 'Dipesh Paudel', 23);

-- Inserts a record into the users table with id 2, name 'Lord Shiva', and age 13
INSERT INTO users (id, name, age) VALUES (2, 'Lord Shiva', 13);

-- Selects all columns from the users table
SELECT * FROM users;

-- Selects only the id column from the users table
SELECT id FROM users;

-- Selects the id and name columns from the users table
SELECT id, name FROM users;
