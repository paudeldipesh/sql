CREATE TABLE products (
  product_id SERIAL PRIMARY KEY,
  product_name TEXT NOT NULL,
  price NUMERIC(10,2),
  category TEXT
);

INSERT INTO products (product_name, price, category)
VALUES ('Laptop', 999.99, 'electronics'),
       ('Smartphone', 799.99, 'electronics'),
       ('Headphones', 199.99, 'audio'),
       ('Monitor', 299.99, 'electronics');

-- SELECT * FROM products;
-- DROP TABLE products;

CREATE INDEX products_price_category_idx ON products (price, category);

SELECT * FROM products
WHERE price BETWEEN 500 AND 1000
  AND category = 'electronics';

SELECT * FROM pg_indexes WHERE tablename = 'products' AND indexname = 'products_price_category_idx';
