# Dia 11 / Day 11 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Você está preparando presentes de Natal para sua família. Quais membros da família estão celebrando seus aniversários em dezembro? Liste seus nomes e datas de aniversário.

**English:**  
You are preparing holiday gifts for your family. Which family members are celebrating their birthdays in December? List their names and birthdays.

---

## Tabela (Table): `family_members`

| member_id | name    | relationship | birthday    |
|-----------|---------|--------------|-------------|
| 1         | Dawn    | Sister       | 2024-12-24  |
| 2         | Bob     | Father       | 2024-05-20  |
| 3         | Charlie | Brother      | 2024-12-25  |
| 4         | Diana   | Mother       | 2024-03-15  |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    name, 
    birthday
FROM 
    family_members
WHERE 
    birthday BETWEEN '2024-12-01' AND '2024-12-31';
