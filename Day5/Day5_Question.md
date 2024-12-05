# Dia 5 / Day 5 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Este ano, estamos comemorando o Natal no Hemisfério Sul! Quais praias devem ter temperaturas acima de 30°C no dia de Natal?

**English:**  
This year, we’re celebrating Christmas in the Southern Hemisphere! Which beaches are expected to have temperatures above 30°C on Christmas Day?

---

## Tabela (Table): `beach_temperature_predictions`

| beach_name        | country         | expected_temperature_c | date       |
|-------------------|-----------------|-------------------------|------------|
| Bondi Beach       | Australia       | 32                      | 2024-12-24 |
| Copacabana Beach  | Brazil          | 28                      | 2024-12-24 |
| Clifton Beach     | South Africa    | 31                      | 2024-12-25 |
| Brighton Beach    | New Zealand     | 25                      | 2024-12-25 |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    beach_name, 
    country, 
    expected_temperature_c
FROM 
    beach_temperature_predictions
WHERE 
    date = '2024-12-25' 
    AND expected_temperature_c > 30;
