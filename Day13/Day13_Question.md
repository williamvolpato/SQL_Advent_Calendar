# Dia 13 / Day 13 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Precisamos garantir que o trenó do Papai Noel esteja devidamente equilibrado. Encontre o peso total dos presentes para cada destinatário.

**English:**  
We need to make sure Santa's sleigh is properly balanced. Find the total weight of gifts for each recipient.

---

## Tabela (Table): `gifts`

| gift_id | gift_name      | recipient | weight_kg |
|---------|----------------|-----------|-----------|
| 1       | Toy Train      | John      | 2.5       |
| 2       | Chocolate Box  | Alice     | 0.8       |
| 3       | Teddy Bear     | Sophia    | 1.2       |
| 4       | Board Game     | John      | 0.9       |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    recipient, 
    SUM(weight_kg) AS total_weight
FROM 
    gifts
GROUP BY 
    recipient;
