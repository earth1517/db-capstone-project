PREPARE GetOrderDetail FROM
'SELECT order_id as OrderID, quantity as Quantity, total_cost as Cost
 FROM orders
 WHERE customer_id = ?';

SET @id = 1;
EXECUTE GetOrderDetail USING @id;