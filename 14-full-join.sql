-- Create the students table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    course_id INT
);

-- Create the courses table
CREATE TABLE courses (
    course_id SERIAL PRIMARY KEY,
    course_name VARCHAR(100)
);

-- Insert data into students table
INSERT INTO students (name, course_id) VALUES
('Alice', 1),
('Bob', 2),
('Charlie', NULL),
('David', 3);

-- Insert data into courses table
INSERT INTO courses (course_name) VALUES
('Mathematics'),
('Physics'),
('Chemistry'),
('Biology');

SELECT students.student_id, students.name, students.course_id, courses.course_id, courses.course_name
FROM students
FULL JOIN courses ON students.course_id = courses.course_id;
