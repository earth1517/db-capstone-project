CREATE VIEW OrdersView AS
SELECT order_id, quantity, total_cost
FROM Orders
WHERE quantity > 2;
