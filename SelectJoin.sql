SELECT
    cd.customer_id as CustomerID,
    cd.customer_name as FullName,
    o.order_id as OrderID,
    o.total_cost as Cost,
    m.item_name as MenuName,
    m.item_type as CourseName
FROM
    customer_details cd
JOIN
    orders o ON cd.customer_id = o.customer_id
JOIN
    menu m ON o.menu_id = m.menu_id
WHERE
    o.total_cost > 150
ORDER BY
    o.total_cost ASC;
