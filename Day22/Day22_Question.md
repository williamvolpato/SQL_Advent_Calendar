# Day 22 of SQL Advent Calendar

## Today's Question (English):
We are hosting a gift party and need to ensure every guest receives a gift. Using the guests and guest_gifts tables, write a query to identify the guest(s) who have not been assigned a gift (i.e., they are not listed in the guest_gifts table).

## Pergunta do Dia (Português):
Estamos organizando uma festa de presentes e precisamos garantir que cada convidado receba um presente. Usando as tabelas guests e guest_gifts, escreva uma consulta para identificar os convidados que não receberam um presente (ou seja, não estão listados na tabela guest_gifts).

---

## Solution / Solução:

```sql
SELECT g.guest_name
FROM guests g
LEFT JOIN guest_gifts gg
ON g.guest_id = gg.guest_id
WHERE gg.guest_id IS NULL;
```

---

## Explanation (English):
**LEFT JOIN**: Combines the guests table with guest_gifts to list all guests, including those without a matching entry in the guest_gifts table.

**WHERE gg.guest_id IS NULL**: Filters only the guests who do not have an assigned gift, identifying them as absent in the guest_gifts table.

## Explicação (Português):
**LEFT JOIN**: Combina a tabela guests com guest_gifts para listar todos os convidados, incluindo aqueles que não têm correspondência na tabela guest_gifts.

**WHERE gg.guest_id IS NULL**: Filtra apenas os convidados que não têm presente atribuído, identificando-os como ausentes na tabela guest_gifts.

