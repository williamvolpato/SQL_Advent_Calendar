# Day 21 - SQL Advent Calendar

### Today's Question:
Santa needs to optimize his sleigh for Christmas deliveries. Write a query to calculate the total weight of gifts for each recipient type (good or naughty) and determine what percentage of the total weight is allocated to each type. Include the recipient_type, total_weight, and weight_percentage in the result.

### Enunciado em português:
O Papai Noel precisa otimizar seu trenó para as entregas de Natal. Escreva uma consulta para calcular o peso total dos presentes para cada tipo de destinatário (bom ou travesso) e determinar qual porcentagem do peso total é alocada para cada tipo. Inclua o tipo de destinatário, o peso total e a porcentagem de peso no resultado.

### Table name: gifts
| gift_id | gift_name      | recipient_type | weight_kg |
|---------|----------------|----------------|-----------|
| 1       | Toy Train      | good           | 2.5       |
| 2       | Lumps of Coal  | naughty        | 1.5       |
| 3       | Teddy Bear     | good           | 1.2       |
| 4       | Chocolate Bar  | good           | 0.3       |
| 5       | Board Game     | naughty        | 1.8       |

### Solution:

```sql
WITH total_weight AS (
    SELECT SUM(weight_kg) AS total_weight
    FROM gifts
)
SELECT 
    recipient_type,
    SUM(weight_kg) AS total_weight,
    ROUND((SUM(weight_kg) / (SELECT total_weight FROM total_weight)) * 100, 2) AS weight_percentage
FROM gifts
GROUP BY recipient_type;
