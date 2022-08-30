-- DROP DATABASE
DROP DATABASE IF EXISTS ecommerce_db;

-- CREATE DATABASE
CREATE DATABASE ecommerce_db;

-- use db
USE ecommerce_db;

-- tables organized from readme
CREATE TABLE category (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  category_name VARCHAR(30) NOT NULL
);

CREATE TABLE product (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  product_name VARCHAR(30) NOT NULL,
  price DECIMAL NOT NULL,
  stock INT NOT NULL DEFAULT(10),
  category_id INT, 
  FOREIGN KEY (category_id)
  REFERENCES category(id)
);

CREATE TABLE tag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_name VARCHAR(30)
);

CREATE TABLE productTag (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  tag_id INT,
  product_id INT,
  FOREIGN KEY (product_id)
  REFERENCES product(id),
  FOREIGN KEY (tag_id)
  REFERENCES tag(id)
);