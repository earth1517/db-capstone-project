DROP PROCEDURE IF EXISTS UpdateBooking;

DELIMITER //

CREATE PROCEDURE UpdateBooking(
    IN p_booking_id INT,
    IN p_booking_date DATE
)
BEGIN
    UPDATE bookings
    SET booking_date = p_booking_date
    WHERE booking_id = p_booking_id;

    SELECT CONCAT('Booking ', p_booking_id, ' updated') AS Confirmation;
END //

DELIMITER ;

CALL UpdateBooking(9, '2023-01-15');

