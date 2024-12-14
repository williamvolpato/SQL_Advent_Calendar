# Dia 14 / Day 14 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Quais resorts de esqui tiveram nevascas maiores que 50 polegadas?

**English:**  
Which ski resorts had snowfall greater than 50 inches?

---

## Tabela (Table): `snowfall`

| resort_name       | location  | snowfall_inches |
|-------------------|-----------|-----------------|
| Snowy Peaks       | Colorado  | 60              |
| Winter Wonderland | Utah      | 45              |
| Frozen Slopes     | Alaska    | 75              |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    resort_name, 
    location, 
    snowfall_inches
FROM 
    snowfall
WHERE 
    snowfall_inches > 50;
