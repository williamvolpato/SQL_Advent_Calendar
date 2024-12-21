# Dia 20 / Day 20 - SQL Advent Calendar

## Pergunta (Question):
**Português:**  
Estamos procurando presentes baratos no mercado. Quais fornecedores estão vendendo itens com preço abaixo de $10? Liste os nomes dos fornecedores únicos (remova duplicatas).

**English:**  
We are looking for cheap gifts at the market. Which vendors are selling items priced below $10? List the unique (i.e., remove duplicates) vendor names.

---

## Tabelas (Tables):

### `vendors`

| vendor_id | vendor_name    | market_location |
|-----------|----------------|-----------------|
| 1         | Cozy Crafts    | Downtown Square |
| 2         | Sweet Treats   | Central Park    |
| 3         | Winter Warmers | Downtown Square |

### `item_prices`

| item_id | vendor_id | item_name         | price_usd |
|---------|-----------|-------------------|-----------|
| 1       | 1         | Knitted Scarf     | 25        |
| 2       | 2         | Hot Chocolate     | 5         |
| 3       | 2         | Gingerbread Cookie| 3.5       |
| 4       | 3         | Wool Hat          | 18        |
| 5       | 3         | Santa Pin         | 2         |

---

## Solução SQL (SQL Solution):
```sql
SELECT DISTINCT 
    v.vendor_name
FROM 
    vendors v
JOIN 
    item_prices ip 
ON 
    v.vendor_id = ip.vendor_id
WHERE 
    ip.price_usd < 10;
