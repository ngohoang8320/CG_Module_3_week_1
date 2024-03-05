CREATE DATABASE IF NOT EXISTS DEMO;

USE DEMO;

CREATE TABLE IF NOT EXISTS Product(
    id INT,
    productCode INT,
    productName VARCHAR(100),
    productPrice DOUBLE,
    productAmount INT,
    productDescription TEXT,
    productStatus BOOLEAN
);

INSERT INTO Product (id, productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES (1,1,'Test', 12.0,12,'Nothing',TRUE);
INSERT INTO Product (id, productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES (2,3,'Test1', 2.0,2,'Nothing',TRUE);
INSERT INTO Product (id, productCode, productName, productPrice, productAmount, productDescription, productStatus)
VALUES (3,4,'Test2', 1.0,22,'Nothing',TRUE);

EXPLAIN SELECT * FROM Product WHERE productCode = 1;

CREATE UNIQUE INDEX idx_code ON product(productCode);

CREATE INDEX idx_comp ON product(productName, productPrice);

EXPLAIN SELECT * FROM Product WHERE productCode = 1;

CREATE VIEW view_product AS
    SELECT productCode, productName, productPrice, productStatus FROM Product;



CREATE OR REPLACE VIEW view_product AS
    SELECT productName, productPrice FROM Product;

# DROP VIEW view_product;

DELIMITER //
CREATE PROCEDURE getAll()
    begin
        SELECT * FROM Product;
    end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE addProduct(IN code VARCHAR(15), IN name VARCHAR(70))
    begin
        INSERT INTO Product(productCode,productName) VALUES (code, name);
    end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE editProduct(IN code VARCHAR(15), IN name VARCHAR(70))
    begin
        UPDATE Product SET productName = name WHERE productCode = code;
    end //
DELIMITER ;

DELIMITER //
CREATE PROCEDURE removeProduct(IN code VARCHAR(15))
    begin
        DELETE FROM Product WHERE productCode = code;
    end //
DELIMITER ;

