# Dia 4 / Day 4 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Você está planejando suas férias de esqui e deseja encontrar as melhores regiões com neve intensa. Dadas as tabelas `resorts` e `snowfall`, encontre a média de neve para cada região e classifique as regiões em ordem decrescente de média de neve. Retorne as colunas `region` e `average_snowfall`.

**English:**  
You’re planning your next ski vacation and want to find the best regions with heavy snowfall. Given the tables `resorts` and `snowfall`, find the average snowfall for each region and sort the regions in descending order of average snowfall. Return the columns `region` and `average_snowfall`.

---

## Tabelas (Tables):

**`ski_resorts`**
| resort_id | resort_name         | region           |
|-----------|---------------------|------------------|
| 1         | Snowy Peaks         | Rocky Mountains  |
| 2         | Winter Wonderland   | Wasatch Range    |
| 3         | Frozen Slopes       | Alaska Range     |
| 4         | Powder Paradise     | Rocky Mountains  |

**`snowfall`**
| resort_id | snowfall_inches |
|-----------|-----------------|
| 1         | 60              |
| 2         | 45              |
| 3         | 75              |
| 4         | 55              |

---

## Solução SQL (SQL Solution):
```sql
SELECT 
    sr.region, 
    AVG(s.snowfall_inches) AS average_snowfall
FROM 
    ski_resorts sr
JOIN 
    snowfall s
ON 
    sr.resort_id = s.resort_id
GROUP BY 
    sr.region
ORDER BY 
    average_snowfall DESC;
