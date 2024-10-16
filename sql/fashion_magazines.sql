SELECT customers.customer_name AS Customer,
       PRINTF('$%.2f', SUM(price_per_month * subscription_length)) AS 'Amount_Due'
FROM customers
JOIN orders ON orders.customer_id = customers.customer_id
JOIN subscriptions ON orders.subscription_id = subscriptions.subscription_id
WHERE subscriptions.description = 'Fashion Magazine'
AND orders.order_status = 'unpaid'
GROUP BY customers.customer_name;

