CREATE TABLE products (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL
);

CREATE TABLE suppliers (
  id SERIAL PRIMARY KEY,
  name VARCHAR(255) NOT NULL,
  contact_info VARCHAR(255)
);

CREATE TABLE product_suppliers (
  product_id INTEGER REFERENCES products(id),  -- Foreign key
  supplier_id INTEGER REFERENCES suppliers(id),  -- Foreign key
  PRIMARY KEY (product_id, supplier_id)  -- Composite primary key
);

INSERT INTO products (name, price)
VALUES ('Laptop', 599.99), ('Headphones', 79.99);

INSERT INTO suppliers (name, contact_info)
VALUES ('Tech Inc.', 'info@techinc.com'), ('Audiophile Supply', 'sales@audiophile.com');

INSERT INTO product_suppliers (product_id, supplier_id)
VALUES (1, 1), (1, 2), (2, 2);

SELECT products.name, suppliers.name
FROM products
INNER JOIN product_suppliers ON products.id = product_suppliers.product_id
INNER JOIN suppliers ON product_suppliers.supplier_id = suppliers.id;

SELECT products.name,
  array_agg(suppliers.name)
FROM products
INNER JOIN product_suppliers ON products.id = product_suppliers.product_id
INNER JOIN suppliers ON product_suppliers.supplier_id = suppliers.id
GROUP BY products.name;