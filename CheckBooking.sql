DELIMITER //

CREATE PROCEDURE CheckBooking(IN p_booking_date DATE, IN p_table_number INT)
BEGIN
    DECLARE booking_status VARCHAR(50);
    
    -- Check if the table is already booked
    IF EXISTS (SELECT 1 FROM bookings WHERE booking_date = p_booking_date AND table_number = p_table_number) THEN
        SET booking_status = CONCAT('Table ', p_table_number, ' is already booked');
    ELSE
        SET booking_status = CONCAT('Table ', p_table_number, ' is available');
    END IF;
    
    -- Return the booking status
    SELECT booking_status AS 'Booking status';
END //

DELIMITER ;

CALL CheckBooking('2022-11-22', 3)