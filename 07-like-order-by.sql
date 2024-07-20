CREATE TABLE product (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(255) NOT NULL,
  category VARCHAR(255) NOT NULL
);

INSERT INTO product (product_name, category)
VALUES ('T-Shirt', 'Clothing'),
       ('Laptop', 'Electronics'),
       ('Headphones Lite', 'Electronics'),
       ('Coffee Mug', 'Kitchen'),
       ('Microphone Pro', 'Electronics'),
       ('Notebook', 'Office Supplies');

SELECT * FROM product;

SELECT * FROM product
WHERE product_name LIKE '%phone%' ORDER BY product_id ASC;

SELECT * FROM product
WHERE category LIKE '__ectronics' ORDER BY product_name LIMIT 2;

DROP TABLE product;
