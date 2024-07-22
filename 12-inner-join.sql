CREATE TABLE users (
  id SERIAL PRIMARY KEY,
  username VARCHAR(255) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  age INTEGER
);

INSERT INTO users (username, password, age)
VALUES ('dipeshpaudel', 'dipesh123', 23),
       ('dineshpaudel', 'dinesh99', 21);

SELECT * FROM users;

CREATE TABLE countries (
  country_code VARCHAR(3) NOT NULL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

INSERT INTO countries (country_code, name)
VALUES ('US', 'United States'),
       ('CA', 'Canada'),
       ('NP', 'Nepal');

SELECT * FROM countries;

SELECT users.username, countries.name
FROM users
INNER JOIN countries ON users.age > 20 AND countries.country_code = 'NP';
