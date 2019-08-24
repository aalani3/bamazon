DROP DATABASE IF EXISTS bamazon_db;
CREATE DATABASE bamazon_db;

CREATE TABLE products(
item_id INT AUTO_INCREMENT NOT NULL,
product_name VARCHAR (50) NOT NULL,
department VARCHAR (50) NOT NULL,
price DECIMAL (10,2) NULL,
quantity INT (11) NOT NULL,
PRIMARY KEY (item_id)
);

USE bamazon_db;

SELECT * FROM products;

INSERT INTO products(product_name, department, price, quantity)
VALUES ("Green tea", "Food and Beverages", 12, 120),
	   ("Tennis Racket", "Sports", 75, 50),
       ("Z t-shirt", "Apparel", 20, 100),
       ("Piano", "Music", 12, 500),
       ("Y chinos", "Apparel", 45, 75),
       ("Q2 shoes", "Footware", 100, 100),
       ("Pampers", "Baby", 25.50, 200),
       ("Learning JS", "Books", 32.30, 60),
       ("Madden 20", "Video Games", 58, 110),
       ("Coffee", "Food and Beverages", 14, 220),
       ("cleaning Towels", "Auto", 9, 250);
       