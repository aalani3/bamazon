DROP DATABASE IF EXISTS bamazon;

CREATE DATABASE bamazon;

USE bamazon;

CREATE TABLE products (
  id INT NOT NULL AUTO_INCREMENT,
  item_id INT NULL,
  product_name VARCHAR(45) NULL,
  department_name VARCHAR(45) NULL,
  price DECIMAL(10, 2) NULL,
  stock_quantity INT NOT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM products;

INSERT INTO products(item_id, product_name, department, price, quantity)
VALUES (01,"Green tea", "Food and Beverages", 12, 120),
	   (02,"Tennis Racket", "Sports", 75, 50),
       (03,"Z t-shirt", "Apparel", 20, 100),
       (04,"Piano", "Music", 400, 20),
       (05,"Y chinos", "Apparel", 45, 75),
       (06,"Q2 shoes", "Footware", 100, 100),
       (07,"Pampers", "Baby", 25.50, 200),
       (08,"Learning JS", "Books", 32.30, 60),
       (09,"Madden 20", "Video Games", 58, 110),
       (10,"Coffee", "Food and Beverages", 14, 220);
    
       