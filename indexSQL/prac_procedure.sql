DELIMITER //
CREATE PROCEDURE findAllCustomers()
    begin
        SELECT * FROM customers;
    end //
DELIMITER ;

CALL findAllCustomers();

DROP PROCEDURE IF EXISTS findAllCustomers;

DELIMITER //
CREATE PROCEDURE findAllCustomers()
    begin
        SELECT * FROM customers WHERE customerNumber = 175;
    end //
DELIMITER ;

CALL findAllCustomers();