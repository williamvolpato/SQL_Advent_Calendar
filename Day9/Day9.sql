WITH ranked_dishes AS (
    SELECT 
        e.event_name, 
        m.dish_name, 
        (m.calories / m.weight_g) AS calorie_density,
        RANK() OVER (PARTITION BY e.event_id ORDER BY (m.calories / m.weight_g) DESC) AS rank
    FROM 
        events e
    JOIN 
        menu m
    ON 
        e.event_id = m.event_id
)
SELECT 
    event_name, 
    dish_name, 
    calorie_density
FROM 
    ranked_dishes
WHERE 
    rank <= 3;
