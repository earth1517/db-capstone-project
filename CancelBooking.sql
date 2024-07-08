DROP PROCEDURE IF EXISTS CancelBooking;

DELIMITER //

CREATE PROCEDURE CancelBooking(
    IN p_booking_id INT
)
BEGIN
    DELETE FROM bookings
    WHERE booking_id = p_booking_id;

    SELECT CONCAT('Booking ', p_booking_id, ' cancelled') AS Confirmation;
END //

DELIMITER ;

CALL CancelBooking(9);

