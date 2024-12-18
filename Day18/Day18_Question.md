# Dia 18 / Day 18 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Uma agência de viagens está promovendo atividades para uma festa de "Natal de Verão". Eles querem identificar as 2 atividades com base na avaliação média. Escreva uma consulta para classificar as atividades por avaliação média.

**English:**  
A travel agency is promoting activities for a "Summer Christmas" party. They want to identify the top 2 activities based on the average rating. Write a query to rank the activities by average rating.

---

## Tabelas (Tables):

### `activities`

| activity_id | activity_name  |
|-------------|----------------|
| 1           | Surfing Lessons|
| 2           | Jet Skiing     |
| 3           | Sunset Yoga    |

### `activity_ratings`

| rating_id | activity_id | rating |
|-----------|-------------|--------|
| 1         | 1           | 4.7    |
| 2         | 1           | 4.8    |
| 3         | 1           | 4.9    |
| 4         | 2           | 4.6    |
| 5         | 2           | 4.7    |
| 6         | 2           | 4.8    |
| 7         | 2           | 4.9    |
| 8         | 3           | 4.8    |
| 9         | 3           | 4.7    |
| 10        | 3           | 4.9    |
| 11        | 3           | 4.8    |
| 12        | 3           | 4.9    |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    a.activity_name, 
    AVG(ar.rating) AS average_rating
FROM 
    activities a
JOIN 
    activity_ratings ar
ON 
    a.activity_id = ar.activity_id
GROUP BY 
    a.activity_name
ORDER BY 
    average_rating DESC
LIMIT 2;
