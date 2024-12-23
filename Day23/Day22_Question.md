# Day 23 of SQL Advent Calendar

## Enunciado da Questão:
**Português:**
O Grinch acompanhou seu peso todos os dias de dezembro para analisar como ele mudou diariamente. Escreva uma query para retornar a mudança de peso (em libras) para cada dia, calculada como a diferença em relação ao peso do dia anterior.

**English:**
The Grinch tracked his weight every day in December to analyze how it changed daily. Write a query to return the weight change (in pounds) for each day, calculated as the difference from the previous day's weight.

---

## Solução em SQL:
```sql
SELECT
    day_of_month,
    weight,
    weight - LAG(weight) OVER (ORDER BY day_of_month) AS weight_change
FROM
    grinch_weight_log;
```

---

## Explicação:
### **Português:**
- **Função LAG**: Retorna o valor do peso do dia anterior, permitindo a comparação com o peso do dia atual.
- **weight - LAG(weight)**: Calcula a diferença entre o peso atual e o peso do dia anterior, fornecendo a variação diária.
- **ORDER BY day_of_month**: Garante que os registros estejam ordenados por data antes de calcular a diferença.

### **English:**
- **LAG Function**: Returns the weight value from the previous day, allowing comparison with the current day's weight.
- **weight - LAG(weight)**: Calculates the difference between the current day's weight and the previous day's weight, providing daily weight change.
- **ORDER BY day_of_month**: Ensures records are ordered by date before calculating the difference.

---

Se tiver dúvidas ou precisar de mais detalhes sobre a lógica aplicada, estou à disposição!

