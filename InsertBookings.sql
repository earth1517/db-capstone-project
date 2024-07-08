-- INSERT INTO customer_details (customer_id, customer_name, contact_details)
-- VALUES
-- (1, 'John Doe', 'john.doe@example.com'),
-- (2, 'Jane Smith', 'jane.smith@example.com'),
-- (3, 'Alice Johnson', 'alice.johnson@example.com');

-- INSERT INTO staff_information (staff_id, role, salary)
-- VALUES
-- (1, 'Waiter', '5000');

INSERT INTO bookings (booking_id, booking_date, table_number, customer_id, staff_id)
VALUES
(1, '2022-10-10', 5, 1, 1),
(2, '2022-11-12', 3, 3, 1),
(3, '2022-10-11', 2, 2, 1),
(4, '2022-10-13', 2, 1, 1)
