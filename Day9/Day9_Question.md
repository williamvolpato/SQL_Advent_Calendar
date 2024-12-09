# Dia 9 / Day 9 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Uma comunidade está organizando uma série de festas festivas e deseja garantir um menu equilibrado. Escreva uma consulta para identificar os 3 pratos mais calóricos (calorias por grama) servidos em cada evento. Inclua o `dish_name`, `event_name` e a densidade calórica calculada nos resultados.

**English:**  
A community is hosting a series of festive feasts, and they want to ensure a balanced menu. Write a query to identify the top 3 most calorie-dense dishes (calories per gram) served for each event. Include the `dish_name`, `event_name`, and the calculated calorie density in your results.

---

## Tabelas (Tables):

### `events`

| event_id | event_name                |
|----------|---------------------------|
| 1        | Christmas Eve Dinner      |
| 2        | New Years Feast           |
| 3        | Winter Solstice Potluck   |

### `menu`

| dish_id | dish_name           | event_id | calories | weight_g |
|---------|---------------------|----------|----------|----------|
| 1       | Roast Turkey        | 1        | 3500     | 5000     |
| 2       | Chocolate Yule Log  | 1        | 2200     | 1000     |
| 3       | Cheese Fondue       | 2        | 1500     | 800      |
| 4       | Holiday Fruitcake   | 3        | 4000     | 1200     |
| 5       | Honey Glazed Ham    | 2        | 2800     | 3500     |

---

## Solução SQL (SQL Solution):
```sql
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

