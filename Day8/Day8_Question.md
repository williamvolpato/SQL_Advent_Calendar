# Dia 8 / Day 8 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Você está gerenciando o estoque na oficina do Papai Noel. Quais presentes são destinados a destinatários "bons"? Liste o nome do presente e seu peso.

**English:**  
You are managing inventory in Santa's workshop. Which gifts are meant for "good" recipients? List the gift name and its weight.

---

## Tabela (Table): `gifts`

| gift_id | gift_name      | recipient_type | weight_kg |
|---------|----------------|----------------|-----------|
| 1       | Toy Train      | good           | 2.5       |
| 2       | Lumps of Coal  | naughty        | 1.5       |
| 3       | Teddy Bear     | good           | 1.2       |
| 4       | Chocolate Bar  | good           | 0.3       |
| 5       | Board Game     | naughty        | 1.8       |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    gift_name, 
    weight_kg
FROM 
    gifts
WHERE 
    recipient_type = 'good';
