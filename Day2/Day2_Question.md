# Dia 2 / Day 2 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Papai Noel quer saber quais presentes pesam mais de 1 kg. Você pode listá-los?  

**English:**  
Santa wants to know which gifts weigh more than 1 kg. Can you list them?  

---

## Tabela (Table): `gifts`

| gift_name      | recipient | weight_kg |
|----------------|-----------|-----------|
| Toy Train      | John      | 2.5       |
| Chocolate Box  | Alice     | 0.8       |
| Teddy Bear     | Sophia    | 1.2       |
| Board Game     | Liam      | 0.9       |

---

## Solução SQL (SQL Solution):
```sql
SELECT gift_name, recipient, weight_kg
FROM gifts
WHERE weight_kg > 1;
