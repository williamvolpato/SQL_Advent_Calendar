SELECT 
    delivery_date,
    gifts_delivered,
    SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS running_total
FROM 
    deliveries;
