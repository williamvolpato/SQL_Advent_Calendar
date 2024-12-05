SELECT 
    beach_name, 
    country, 
    expected_temperature_c
FROM 
    beach_temperature_predictions
WHERE 
    date = '2024-12-25' 
    AND expected_temperature_c > 30;
