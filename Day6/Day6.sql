SELECT 
    pb.bear_id, 
    pb.bear_name, 
    SUM(t.distance_km) AS total_distance_traveled
FROM 
    polar_bears pb
JOIN 
    tracking t
ON 
    pb.bear_id = t.bear_id
WHERE 
    t.date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY 
    pb.bear_id, pb.bear_name
ORDER BY 
    total_distance_traveled DESC
LIMIT 3;
