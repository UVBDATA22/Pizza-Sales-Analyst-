
-- 1  Retrieve the total number of orders placed.

SELECT 
    COUNT(order_id) AS Total_orders
FROM
    orders;

-- 2 Calculate the total revenue generated from pizza sales.

SELECT 
    ROUND(SUM(order_details.quantity * pizzas.price),2) AS Total_revenue
FROM
    order_details
        JOIN
    pizzas ON pizzas.pizza_id = order_details.pizza_id;
    
-- 3 Identify the highest-priced pizza.

SELECT 
    pizza_types.name, pizzas.price
FROM
    pizza_types
        JOIN
    pizzas ON pizza_types.pizza_type_id = pizzas.pizza_type_id
ORDER BY pizzas.price DESC
LIMIT 1;

-- 4 Identify the most common pizza size ordered.

SELECT 
quantity,
count(order_details.order_details_id) AS order_count
FROM pizzas join order_details
on pizzas.pizza_id = order_details.pizza_id
group by pizza.size order by order_count ; 
group by pizza.size order by order_count ; 
