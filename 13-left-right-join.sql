CREATE TABLE customers (
  customer_id SERIAL PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(100)
);

CREATE TABLE orders (
  order_id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customers(customer_id),
  order_date DATE
);

CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name VARCHAR(100),
  price DECIMAL(10,2)
);

CREATE TABLE order_items (
  order_id INTEGER REFERENCES orders(order_id),
  product_id INTEGER REFERENCES products(product_id),
  quantity INTEGER,
  PRIMARY KEY (order_id, product_id)
);

INSERT INTO customers (first_name, last_name, email)
VALUES ('John', 'Doe', 'johndoe@example.com'),
       ('Jane', 'Smith', 'janesmith@example.com');

INSERT INTO orders (customer_id, order_date)
VALUES (1, '2023-11-15'),
       (2, '2023-11-18');

INSERT INTO products (product_name, price)
VALUES ('Laptop', 999.99),
       ('Smartphone', 799.99),
       ('Headphones', 199.99);

INSERT INTO order_items (order_id, product_id, quantity)
VALUES (1, 1, 1),
       (1, 2, 2),
       (2, 3, 1);

SELECT c.first_name, c.last_name, o.order_date, p.product_name, oi.quantity
FROM customers c
LEFT JOIN orders o ON c.customer_id = o.customer_id
LEFT JOIN order_items oi ON o.order_id = oi.order_id
LEFT JOIN products p ON oi.product_id = p.product_id;

SELECT c.first_name, c.last_name, o.order_date, p.product_name, oi.quantity
FROM customers c
RIGHT JOIN orders o ON c.customer_id = o.customer_id
RIGHT JOIN order_items oi ON o.order_id = oi.order_id
RIGHT JOIN products p ON oi.product_id = p.product_id;
