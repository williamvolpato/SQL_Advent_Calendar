# Day 22 - SQL Advent Calendar

### Today's Question:
We are hosting a gift party and need to ensure every guest receives a gift. Using the guests and guest_gifts tables, write a query to identify the guest(s) who have not been assigned a gift (i.e. they are not listed in the guest_gifts table).

### Enunciado em português:
Estamos organizando uma festa de presentes e precisamos garantir que todos os convidados recebam um presente. Usando as tabelas **guests** e **guest_gifts**, escreva uma consulta para identificar os convidados que não receberam presentes (ou seja, que não estão listados na tabela **guest_gifts**).

---

### Table name: guests
| guest_id | guest_name          |
|----------|---------------------|
| 1        | Cindy Lou           |
| 2        | The Grinch          |
| 3        | Max the Dog         |
| 4        | Mayor May Who       |

### Table name: guest_gifts
| gift_id | guest_id | gift_name         |
|---------|----------|-------------------|
| 1       | 1        | Toy Train         |
| 2       | 1        | Plush Bear        |
| 3       | 2        | Bag of Coal       |
| 4       | 2        | Sleigh Bell       |
| 5       | 3        | Dog Treats        |

---

### Solution:

```sql
SELECT g.guest_name
FROM guests g
LEFT JOIN guest_gifts gg
ON g.guest_id = gg.guest_id
WHERE gg.guest_id IS NULL;
