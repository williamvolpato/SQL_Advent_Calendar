# Dia 19 / Day 19 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Cientistas estão estudando a dieta dos ursos polares. Escreva uma consulta para encontrar a maior quantidade de alimento (em quilogramas) consumido por cada urso polar em um único dia de dezembro de 2024. Inclua o nome do urso e a maior refeição consumida.

**English:**  
Scientists are studying the diets of polar bears. Write a query to find the maximum amount of food (in kilograms) consumed by each polar bear in a single meal December 2024. Include the bear's name and biggest meal consumed, and sort the results in descending order of largest meal consumed.

---

## Tabelas (Tables):

### `polar_bears`

| bear_id | bear_name | age |
|---------|-----------|-----|
| 1       | Snowball  | 10  |
| 2       | Frosty    | 7   |
| 3       | Iceberg   | 15  |

### `meal_log`

| log_id | bear_id | food_type | food_weight_kg | date       |
|--------|---------|-----------|----------------|------------|
| 1      | 1       | Seal      | 30             | 2024-12-01 |
| 2      | 2       | Fish      | 15             | 2024-12-02 |
| 3      | 1       | Fish      | 10             | 2024-12-03 |
| 4      | 3       | Seal      | 25             | 2024-12-04 |
| 5      | 2       | Seal      | 20             | 2024-12-05 |
| 6      | 3       | Fish      | 18             | 2024-12-06 |

---

## Solução SQL (SQL Solution):
```sql
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
