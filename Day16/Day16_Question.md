# Dia 16 / Day 16 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Como proprietário de uma loja de doces, você quer entender quais produtos estão vendendo melhor. Escreva uma consulta para calcular a receita total gerada por cada categoria de doces.

**English:**  
As the owner of a candy store, you want to understand which of your products are selling best. Write a query to calculate the total revenue generated from each candy category.

---

## Tabela (Table): `candy_sales`

| sale_id | candy_name             | quantity_sold | price_per_unit | category   |
|---------|------------------------|---------------|----------------|------------|
| 1       | Candy Cane             | 20            | 1.5            | Sweets     |
| 2       | Chocolate Bar          | 10            | 2              | Chocolate  |
| 3       | Lollipop               | 5             | 0.75           | Sweets     |
| 4       | Dark Chocolate Truffle | 8             | 2.5            | Chocolate  |
| 5       | Gummy Bears            | 15            | 1.2            | Sweets     |
| 6       | Chocolate Fudge        | 12            | 3              | Chocolate  |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    category, 
    SUM(quantity_sold * price_per_unit) AS total_revenue
FROM 
    candy_sales
GROUP BY 
    category
ORDER BY 
    total_revenue DESC;
