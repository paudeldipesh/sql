CREATE TABLE vegetables (
  vegetable_id SERIAL PRIMARY KEY,
  vegetable_name VARCHAR(255) NOT NULL,
  price DECIMAL(10,2) NOT NULL
);

INSERT INTO vegetables (vegetable_name, price)
VALUES ('Tomato', 1.25),
       ('Onion', 0.75),
       ('Potato', 0.50),
       ('Chili', 1.50),
       ('Cucumber', 1.00);

SELECT * FROM vegetables;

SELECT
  COUNT(*) AS total_vegetables,
  SUM(price) AS total_cost,
  AVG(price)::DECIMAL(10,2) AS average_price,
  MAX(price) AS most_expensive,
  MIN(price) AS least_expensive
FROM vegetables;

SELECT
  vegetable_id,
  price::DECIMAL(10,2)
FROM vegetables
GROUP BY vegetable_id
HAVING price >= 1.00
ORDER BY vegetable_id;

DROP TABLE vegetables;