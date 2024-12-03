# Dia 3 / Day 3 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Você está tentando identificar os doces mais calóricos para evitar durante as festas. Escreva uma consulta para ranquear os doces com base na contagem de calorias dentro de cada categoria. Inclua o nome do doce, a categoria, as calorias e o ranking dentro da categoria (`rank_in_category`).

**English:**  
You’re trying to identify the most calorie-packed candies to avoid during your holiday binge. Write a query to rank candies based on their calorie count within each category. Include the candy name, category, calories, and rank (`rank_in_category`) within the category.

---

## Tabela (Table): `candy_nutrition`

| candy_id | candy_name            | calories | candy_category |
|----------|-----------------------|----------|----------------|
| 1        | Candy Cane            | 200      | Sweets         |
| 2        | Chocolate Bar         | 250      | Chocolate      |
| 3        | Gingerbread Cookie    | 150      | Baked Goods    |
| 4        | Lollipop              | 100      | Sweets         |
| 5        | Dark Chocolate Truffle| 180      | Chocolate      |
| 6        | Marshmallow           | 900      | Sweets         |
| 7        | Sugar Cookie          | 140      | Baked Goods    |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    candy_name, 
    candy_category, 
    calories, 
    RANK() OVER (PARTITION BY candy_category ORDER BY calories DESC) AS rank_in_category
FROM 
    candy_nutrition;
