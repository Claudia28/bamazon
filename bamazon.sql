-- drop database first
DROP DATABASE IF EXISTS bamazon_db;
-- create database
CREATE DATABASE bamazon_db;

-- create table inside the database called products
CREATE TABLE products (
product_name VARCHAR(45) NOT NULL,
item_id VARCHAR(45),
dept_name VARCHAR(25),
price DECIMAL(100,2) NULL DEFAULT 0 NOT NULL,
stock_quantity INTEGER(10) DEFAULT 0 NOT NULL,
PRIMARY KEY (id)

-- have the item_id product name departmet name price stock quantity 
);


CREATE TABLE purchases (
purchaseId INTEGER(11) AUTO_INCREMENT NOT NULL,
purchaseUser VARCHAR(15) NOT NULL,
purchaseProductId INTEGER(15) NOT NULL,
purchaseQty INTEGER(15)NOT NULL,
purchasePrice DECIMAL(11,2)NOT NULL,
PRIMARY KEY (purchaseId)
);


CREATE TABLE departments(
  dept INTEGER(11) AUTO_INCREMENT NOT NULL,
  dept_name VARCHAR(50) NOT NULL,
  overhead_costs DECIMAL(10,2) DEFAULT 0 NOT NULL,
  dept_sales DECIMAL(10,2) DEFAULT 0 NOT NULL,
  PRIMARY KEY (dept)
);


-- populate database with 10 different products 
INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("iPhoneX", 0001, "Phones", $999, 8);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("Nike FREERUN", 0002, "Shoes", $99, 5);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("earpods", 0003, "tech", $39, 10);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("iPhoneX Cover", 0004, "Phones", $19, 10);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("coloring book", 0005, "activity", $9, 5);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("multi-vitamin Chew", 0006, "vitmains", $19, 5);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("Final Fantasy VII", 0007, "Video Games", $80, 1);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("Canon Mark III 5D ", 0008, "Camera", $999, 1);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("Chapstick", 0009, "essentials", $4, 5);

INSERT INTO product_name ( item_id, dept_name, price, stock_quantity)
VALUES ("Nerf Guns", 0010, "toys", $9, 8);

CREATE VIEW totalsales AS SELECT dept, dept_name, overhead_costs, dept_sales, dept_sales-overhead_costs AS profit FROM departments;
