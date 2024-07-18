CREATE TABLE students (
  id SERIAL PRIMARY KEY,  -- Auto-incrementing unique identifier
  name VARCHAR(255) NOT NULL  -- Fixed-length string for efficient name storage
);

CREATE TABLE courses (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE enrollments (
  id SERIAL PRIMARY KEY,
  student_id INTEGER NOT NULL REFERENCES students(id),
  course_id INTEGER NOT NULL REFERENCES courses(id)
);

INSERT INTO students (name)
VALUES ('Dipesh Paudel'), ('Rupesh Timilsena');

SELECT * FROM students;

INSERT INTO courses (name)
VALUES ('100 Days of Python'), ('Chartered Accountancy');

SELECT * FROM courses;

-- Assuming student IDs are 1 and 2
INSERT INTO enrollments (student_id, course_id)
VALUES (1, 1),  -- Dipesh enrolled in '100 Days of Python'
       (2, 2);   -- Rupesh enrolled in 'Chartered Accountancy'

SELECT * FROM enrollments;
