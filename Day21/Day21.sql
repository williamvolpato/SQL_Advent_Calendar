WITH total_weight AS (
    SELECT 
        SUM(weight_kg) AS total_weight
    FROM gifts
)

SELECT 
    recipient_type,
    SUM(weight_kg) AS total_weight,
    ROUND(SUM(weight_kg) * 100.0 / (SELECT total_weight FROM total_weight), 2) AS weight_percentage
FROM 
    gifts
GROUP BY 
    recipient_type;
