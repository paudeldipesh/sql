-- Create a table named transactions to store transaction details
CREATE TABLE transactions (
    id INTEGER,
    recipient_id INTEGER,
    sender_id INTEGER,
    note TEXT,
    amount INTEGER
);

-- Retrieve all rows and columns from the transactions table
SELECT * FROM transactions;

-- Rename the transactions table to bank
ALTER TABLE transactions RENAME TO bank;

-- Rename the column note to description in the bank table
ALTER TABLE bank RENAME COLUMN note TO description;

-- Add a new column named is_happy to the bank table
ALTER TABLE bank ADD COLUMN is_happy BOOLEAN;

-- Remove the column is_happy from the bank table
ALTER TABLE bank DROP COLUMN is_happy;

-- Retrieve all rows and columns from the bank table
SELECT * FROM bank;

-- Drop (delete) the bank table from the database
DROP TABLE bank;

-- Create a table named users to store user information with constraints
CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    country_code TEXT NOT NULL,
    username TEXT UNIQUE,
    password TEXT NOT NULL,
    is_admin BOOLEAN
);

-- Insert a user into the users table with admin privileges
INSERT INTO users (id, name, age, country_code, username, password, is_admin) VALUES (
    0, 'Dipesh Paudel', 23, '3166', 'dipeshpaudel', 'dipeshpaudel', TRUE
);

-- Insert another user into the users table without admin privileges
INSERT INTO users (id, name, age, country_code, username, password, is_admin) VALUES (
    1, 'Dikesh Paudel', 22, '3166', 'dikeshpaudel', 'dikeshpaudel', FALSE
);

-- Retrieve all rows and columns from the users table
SELECT * FROM users;

-- Drop (delete) the users table from the database
DROP TABLE users;
