# Dia 10 / Day 10 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Você está acompanhando o progresso das resoluções de Ano Novo dos seus amigos. Escreva uma consulta para calcular o seguinte para cada amigo: número total de resoluções feitas, número de resoluções concluídas, percentual de sucesso (% de resoluções concluídas) e uma categoria de sucesso com base no percentual:
- **Verde**: Se o percentual de sucesso for maior que 75%.
- **Amarelo**: Se o percentual de sucesso estiver entre 50% e 75% (inclusive).
- **Vermelho**: Se o percentual de sucesso for menor que 50%.

**English:**  
You are tracking your friends' New Year's resolution progress. Write a query to calculate the following for each friend: number of resolutions they made, number of resolutions they completed, success percentage (% of resolutions completed), and a success category based on the success percentage:
- **Green**: If success percentage is greater than 75%.
- **Yellow**: If success percentage is between 50% and 75% (inclusive).
- **Red**: If success percentage is less than 50%.

---

## Tabela (Table): `resolutions`

| resolution_id | friend_name | resolution           | is_completed |
|---------------|-------------|----------------------|--------------|
| 1             | Alice       | Exercise daily       | 1            |
| 2             | Alice       | Read 20 books        | 0            |
| 3             | Bob         | Save money           | 0            |
| 4             | Bob         | Eat healthier        | 1            |
| 5             | Charlie     | Travel more          | 1            |
| 6             | Charlie     | Learn a new skill    | 1            |
| 7             | Diana       | Volunteer monthly    | 1            |
| 8             | Diana       | Drink more water     | 0            |
| 9             | Diana       | Sleep 8 hours        | 1            |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    friend_name,
    COUNT(*) AS total_resolutions,
    SUM(is_completed) AS completed_resolutions,
    ROUND(SUM(is_completed) * 100.0 / COUNT(*), 2) AS success_percentage,
    CASE
        WHEN (SUM(is_completed) * 100.0 / COUNT(*)) > 75 THEN 'Green'
        WHEN (SUM(is_completed) * 100.0 / COUNT(*)) BETWEEN 50 AND 75 THEN 'Yellow'
        ELSE 'Red'
    END AS success_category
FROM 
    resolutions
GROUP BY 
    friend_name;
