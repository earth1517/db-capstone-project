DELIMITER //

DROP PROCEDURE IF EXISTS CancelOrder;
CREATE PROCEDURE CancelOrder(IN p_order_id INT)
BEGIN
    DELETE FROM orders
    WHERE order_id = p_order_id;

    SELECT CONCAT('Order ', p_order_id, ' is cancelled') AS Confirmation;
END //

DELIMITER ;


CALL CancelOrder(5);
