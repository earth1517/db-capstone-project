-- ALTER TABLE bookings MODIFY booking_id INT AUTO_INCREMENT;

DROP PROCEDURE IF EXISTS AddValidBooking;

DELIMITER //

CREATE PROCEDURE AddValidBooking(
    IN p_booking_date DATE,
    IN p_table_number INT,
    IN p_customer_id INT,
    IN p_staff_id INT
)
BEGIN
    DECLARE table_booked BOOLEAN;
    DECLARE booking_status VARCHAR(50);
    
    START TRANSACTION;
    
    -- Check if the table is already booked
    SET table_booked = EXISTS (
        SELECT 1 
        FROM bookings 
        WHERE booking_date = p_booking_date 
          AND table_number = p_table_number
    );
    
    -- If table is already booked, rollback
    IF table_booked THEN
        ROLLBACK;
        SET booking_status = CONCAT('Table ', p_table_number, ' is already booked - Booking cancelled');
    ELSE
        -- If table is available, insert the booking and commit
        INSERT INTO bookings (booking_date, table_number, customer_id, staff_id)
        VALUES (p_booking_date, p_table_number, p_customer_id, p_staff_id);
        
        COMMIT;
        SET booking_status = 'Booking successful';
    END IF;
    
    -- Return the booking status
    SELECT booking_status AS 'Booking status';
END //

DELIMITER ;

CALL AddValidBooking('2022-12-17', 6, 1, 1);
