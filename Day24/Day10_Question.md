# Day 24 of SQL Advent Calendar

## Enunciado em Inglês:
Santa is tracking how many presents he delivers each night leading up to Christmas. He wants a running total to see how many gifts have been delivered so far on any given night. Using the deliveries table, calculate the cumulative sum of gifts delivered, ordered by the delivery date.

## Enunciado em Português:
O Papai Noel está monitorando quantos presentes ele entrega todas as noites antes do Natal. Ele quer um total acumulado para ver quantos presentes foram entregues até agora em qualquer noite específica. Usando a tabela de entregas, calcule a soma acumulada dos presentes entregues, ordenada pela data de entrega.

---

## Solução SQL:
```sql
SELECT 
    delivery_date, 
    gifts_delivered,
    SUM(gifts_delivered) OVER (ORDER BY delivery_date) AS cumulative_gifts
FROM deliveries;
```

---

## Explicação:
1. **Cláusula SELECT**: Seleciona as colunas necessárias, incluindo a data de entrega e o número de presentes entregues.
2. **Função SUM() com OVER()**: Calcula a soma acumulada dos presentes entregues, ordenada pela data de entrega.
3. **ORDER BY delivery_date**: Garante que os valores acumulados sejam calculados na ordem correta das datas de entrega.

---

## Resultado Esperado:
| delivery_date | gifts_delivered | cumulative_gifts |
|---------------|------------------|------------------|
| 2024-12-20    | 120              | 120              |
| 2024-12-21    | 150              | 270              |
| 2024-12-22    | 200              | 470              |
| 2024-12-23    | 300              | 770              |
| 2024-12-24    | 500              | 1270             |

---

Se precisar de mais alguma alteração ou adição, é só avisar!

