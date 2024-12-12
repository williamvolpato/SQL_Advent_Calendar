SELECT 
    sg.globe_name, 
    sg.material, 
    COUNT(f.figurine_id) AS number_of_figurines
FROM 
    snow_globes sg
LEFT JOIN 
    figurines f
ON 
    sg.globe_id = f.globe_id
GROUP BY 
    sg.globe_id, sg.globe_name, sg.material
ORDER BY 
    number_of_figurines DESC
LIMIT 3;
