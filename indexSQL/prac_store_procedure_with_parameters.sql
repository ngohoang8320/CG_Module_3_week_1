DELIMITER //
CREATE PROCEDURE getCusById(IN cusNum INT(11))
    begin
        SELECT * FROM customers WHERE customerNumber = cusNum;
    end //
DELIMITER ;

CALL getCusById(175);

DROP PROCEDURE IF EXISTS getCusById;


DELIMITER //
CREATE PROCEDURE GetCustomerCountById (IN in_city VARCHAR(50), OUT total INT)
    begin
        SELECT COUNT(customerNumber) INTO total FROM customers WHERE city = in_city;
    end //
DELIMITER ;

CALL GetCustomerCountById('Lyon', @total);
SELECT @total;

DROP PROCEDURE IF EXISTS GetCustomerCountById;


DELIMITER //
CREATE PROCEDURE SetCounter(
    INOUT counter INT,
    IN inc INT
)
    begin
        SET counter = counter + inc;
    end //
DELIMITER ;

SET @Counter = 1;

CALL SetCounter(@Counter, 1);
CALL SetCounter(@Counter, 1);
CALL SetCounter(@Counter, 5);

SELECT @Counter;

DROP PROCEDURE IF EXISTS SetCounter;