# Day 1 Challenge

**Difficulty Level:** Medium

## 📝 Task Description

A ski resort company wants to know which customers rented equipment for more than one type of activity (e.g., skiing and snowboarding). List the customer names and the number of distinct activities they rented equipment for.

### 🗂 Available Table: `rentals`

| rental_id | customer_name | activity       | rental_date |
|-----------|---------------|----------------|-------------|
| 1         | Emily         | Skiing         | 2024-01-01  |
| 2         | Michael       | Snowboarding   | 2024-01-02  |
| 3         | Emily         | Snowboarding   | 2024-01-03  |
| 4         | Sarah         | Skiing         | 2024-01-01  |
| 5         | Michael       | Skiing         | 2024-01-02  |
| 6         | Michael       | Snowtubing     | 2024-01-02  |

## 🎯 Goal

Write an SQL query to:

1. Identify customers who rented equipment for more than one distinct activity.
2. Display the names of the customers and the number of distinct activities.

## ✅ Example Output

| customer_name | distinct_activities |
|---------------|----------------------|
| Emily         | 2                    |
| Michael       | 3                    |

---

**Good luck!**

