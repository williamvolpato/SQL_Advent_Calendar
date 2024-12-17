# Dia 17 / Day 17 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
O Grinch está planejando suas pegadinhas para esta temporada de festas. Quais pegadinhas têm nível de dificuldade "Advanced" ou "Expert"? Liste o nome da pegadinha e a localização (ambos em ordem decrescente).

**English:**  
The Grinch is planning out his pranks for this holiday season. Which pranks have a difficulty level of "Advanced" or "Expert"? List the prank name and location (both in descending order).

---

## Tabela (Table): `grinch_pranks`

| prank_id | prank_name            | location              | difficulty  |
|----------|-----------------------|-----------------------|-------------|
| 1        | Stealing Stockings    | Whoville             | Beginner    |
| 2        | Christmas Tree Topple | Whoville Town Square | Advanced    |
| 3        | Present Swap          | Cindy Lous House     | Beginner    |
| 4        | Sleigh Sabotage       | Mount Crumpit        | Expert      |
| 5        | Chimney Block         | Mayors Mansion       | Expert      |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    prank_name, 
    location
FROM 
    grinch_pranks
WHERE 
    difficulty IN ('Advanced', 'Expert')
ORDER BY 
    prank_name DESC, 
    location DESC;
