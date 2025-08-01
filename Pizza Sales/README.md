# Pizza Sales SQL Analysis

This project contains a collection of SQL queries to analyze pizza sales data using MySQL.

**Data Source:**  
YouTube Channel – [Data Tutorial](https://youtu.be/V-s8c6jMRN0?si=YqvhnHFWELyJ0YcF)

## Key Performance Indicators (KPIs)

1. **Total Revenue**
2. **Average Order Value**
3. **Total Pizza Sold**
4. **Total Orders**
5. **Average Pizzas per Order**

## Trend Analysis

- **Daily Trend for Total Orders**
- **Monthly Trend for Total Orders**

## Sales Distribution

- **Percentage of Sales by Pizza Category**
- **Percentage of Sales by Pizza Size**
- **Total Pizzas Sold by Pizza Category**

## Best & Worst Performers

- **Top 5 Pizzas by Revenue**
- **Bottom 5 Pizzas by Revenue**
- **Top 5 Pizzas by Quantity**
- **Bottom 5 Pizzas by Quantity**
- **Top 5 Pizzas by Total Orders**
- **Bottom 5 Pizzas by Total Orders**

## Sample Query Using WHERE Clause

```sql
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales15
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders DESC
LIMIT 5;
