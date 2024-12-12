# Dia 12 / Day 12 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Um colecionador quer identificar os 3 globos de neve com o maior número de figuras. Escreva uma consulta para classificá-los e inclua o `globe_name`, número de figuras e o material.

**English:**  
A collector wants to identify the top 3 snow globes with the highest number of figurines. Write a query to rank them and include their `globe_name`, number of figurines, and material.

---

## Tabelas (Tables):

### `snow_globes`

| globe_id | globe_name          | volume_cm3 | material |
|----------|---------------------|------------|----------|
| 1        | Winter Wonderland   | 500        | Glass    |
| 2        | Santas Workshop     | 300        | Plastic  |
| 3        | Frozen Forest       | 400        | Glass    |
| 4        | Holiday Village     | 600        | Glass    |

### `figurines`

| figurine_id | globe_id | figurine_type  |
|-------------|----------|----------------|
| 1           | 1        | Snowman        |
| 2           | 1        | Tree           |
| 3           | 2        | Santa Claus    |
| 4           | 2        | Elf            |
| 5           | 2        | Gift Box       |
| 6           | 3        | Reindeer       |
| 7           | 3        | Tree           |
| 8           | 4        | Snowman        |
| 9           | 4        | Santa Claus    |
| 10          | 4        | Tree           |
| 11          | 4        | Elf            |
| 12          | 4        | Gift Box       |

---

## Solução SQL (SQL Solution):
```sql
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
