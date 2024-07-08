DELIMITER //

CREATE PROCEDURE GetMaxQuantity()
BEGIN
    SELECT MAX(quantity) AS 'Max Quantity in Order'
    FROM orders;
END //

DELIMITER ;
