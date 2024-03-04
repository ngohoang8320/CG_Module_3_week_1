USE classicmodels;

# SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_customerName(customerName);

ALTER TABLE customers DROP INDEX idx_customerName;

EXPLAIN SELECT * FROM customers WHERE customerName = 'Land of Toys Inc.';

ALTER TABLE customers ADD INDEX idx_full_name (contactFirstName, contactLastName);

ALTER TABLE customers DROP INDEX idx_full_name;

EXPLAIN SELECT * FROM customers WHERE contactFirstName = 'Jean' or contactFirstName = 'King';

