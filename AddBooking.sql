DROP PROCEDURE IF EXISTS AddBooking;

DELIMITER //

CREATE PROCEDURE AddBooking(
    IN p_booking_id INT,
    IN p_customer_id INT,
    IN p_booking_date DATE,
    IN p_table_number INT,
    IN p_staff_id INT
)
BEGIN
    INSERT INTO bookings (booking_id, customer_id, booking_date, table_number, staff_id)
    VALUES (p_booking_id, p_customer_id, p_booking_date, p_table_number, p_staff_id);
    
    SELECT 'New booking added' AS Confirmation;
END //

DELIMITER ;


CALL AddBooking(9, 3, '2022-12-30', 4, 1);