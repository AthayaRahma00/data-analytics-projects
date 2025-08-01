/* 
© 2025 Athaya Rahma. github.com/AthayaRahma00/my-portfolio/tree/main/Pizza%20Sales
*/

Select * from pizza_sales15;
/*A. KPI's requirement*/
/* 1. Total Revenue*/
Select Cast(sum(total_price) as decimal(10,2)) as Total_Revenue from pizza_sales15;
/* 2. Average Order Value*/
Select Cast(Sum(total_price)/count(distinct order_id) as decimal (10,2)) as Avg_order_value
from pizza_sales15;
/* 3. Total Pizza Sold*/
Select Sum(quantity) as Total_pizza_sold from pizza_sales15;
/* 4. Total Orders*/
Select count(distinct order_id) as Total_orders from pizza_sales15;
/*5.Average Pizzas Per Orders*/
Select Cast((sum(quantity)/Count(distinct order_id)) as decimal(10,2)) as Avg_Pizzas_per_order 
from pizza_sales15;

/*Daily Trend for Total Orders*/
select dayname (str_to_date (order_date,'%m/%d/%Y')) as order_day, 
count(distinct order_id) as total_orders
from pizza_sales15
group by order_day;

/*Monthly Trend for Total Orders*/
Select monthname(str_to_date (order_date, '%m/%d/%Y')) as Month_name,
count(distinct order_id) as total_orders
from pizza_sales15
group by Month_name;

/*Percentage of Sales by Pizza Category*/
Select pizza_category, Cast(sum(total_price) as decimal (10,2)) as total_revenue, 
Cast(sum(total_price)*100/(select sum(total_price) from pizza_sales15)
as decimal(10,2)) as Percentage
from pizza_sales15
group by pizza_category
order by Percentage desc;

/*Percentage of Sales by Pizza Size*/
Select pizza_size, cast(sum(total_price) as decimal(10,2)) as total_revenue,
cast(sum(total_price)*100/(select sum(total_price) from pizza_sales15) 
as decimal (10,2)) as Percentage from pizza_sales15
group by pizza_size
order by Percentage desc ;

/*Total Pizzas Sold by Pizza Category*/
select pizza_category, sum(quantity) from pizza_sales15
group by pizza_category;

/*Top 5 Pizza by Revenue*/
Select pizza_name, cast(sum(total_price) as decimal (10,2))as total_revenue
from pizza_sales15
group by pizza_name
order by total_revenue desc
limit 5;

/* Bottom 5 Pizza by Revenue*/
Select pizza_name, Cast(sum(total_price) as decimal(10,2)) as total_revenue
from pizza_sales15
group by pizza_name
Order by total_revenue asc
Limit 5;

/*Top 5 Pizza by Quantity*/
Select pizza_name, sum(quantity) as Quantity
from pizza_sales15
group by pizza_name
order by Quantity
limit 5;

/*Bottom 5 Pizza by Quantity*/
Select pizza_name, sum(quantity) as Quantity
from pizza_sales15
group by pizza_name
order by Quantity 
limit 5;

/*Top 5 Pizza by Total Orders*/
Select pizza_name, count(distinct order_id) as Total_order
from pizza_sales15
group by pizza_name
order by Total_order desc
limit 5;

/*Bottom 5 Pizza by Total Orders*/
Select pizza_name, count(distinct order_id) as Total_order
from pizza_sales15
group by pizza_name
order by Total_order
limit 5;


/*Additional*/
SELECT pizza_name, COUNT(DISTINCT order_id) AS Total_Orders
FROM pizza_sales15
WHERE pizza_category = 'Classic'
GROUP BY pizza_name
ORDER BY Total_Orders desc
limit 5;







