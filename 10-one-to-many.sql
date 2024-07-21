CREATE TABLE authors (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

CREATE TABLE books (
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  author_id INTEGER REFERENCES authors(id),  -- Foreign key
  genre VARCHAR(255)
);

INSERT INTO authors (name) VALUES ('J.R.R. Tolkien'), ('George R.R. Martin');

INSERT INTO books (title, author_id, genre)
VALUES ('The Lord of the Rings', 1, 'Fantasy'),
       ('A Song of Ice and Fire', 2, 'Fantasy');

SELECT books.title, authors.name
FROM books
INNER JOIN authors ON books.author_id = authors.id;
