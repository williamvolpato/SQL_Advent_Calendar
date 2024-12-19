SELECT 
    pb.bear_name, 
    MAX(ml.food_weight_kg) AS biggest_meal_kg
FROM 
    polar_bears pb
JOIN 
    meal_log ml 
ON 
    pb.bear_id = ml.bear_id
WHERE 
    ml.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY 
    pb.bear_name
ORDER BY 
    biggest_meal_kg DESC;
