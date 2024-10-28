
/* 1. Average Time from Order Purchased to Approval */

SELECT 
    ROUND(AVG((julianday(order_approved_at) - julianday(order_purchase_timestamp)) * 24),2) AS avg_approval_time_in_hours
FROM 
    ecommerce 
WHERE 
    order_approved_at IS NOT NULL 
    AND order_purchase_timestamp IS NOT NULL;

/* 2. Average Time from Order Placement to Delivery */ 

SELECT 
    ROUND(AVG((julianday(order_delivered_timestamp) - julianday(order_approved_at))),2) AS avg_delivery_time_in_days
FROM 
    ecommerce e 
WHERE 
    order_approved_at IS NOT NULL 
    AND order_delivered_timestamp IS NOT NULL;
    
/* 3. Distribution of Orders based on processing time. */   
   
SELECT 
    CASE 
        WHEN (julianday(order_delivered_timestamp) - julianday(order_approved_at)) * 24 < 24 THEN 'Less than 24 hours'
        WHEN (julianday(order_delivered_timestamp) - julianday(order_approved_at)) * 24 BETWEEN 24 AND 72 THEN '24-72 hours'
        ELSE 'More than 72 hours'
    END AS delivery_time_category,
    COUNT(*) AS order_count
FROM 
    ecommerce
WHERE 
    order_approved_at IS NOT NULL 
    AND order_delivered_timestamp IS NOT NULL
GROUP BY 
    delivery_time_category;

/* 4. Count Orders by Status */
   
SELECT 
    order_status, 
    COUNT(*) AS order_count
FROM 
    ecommerce
GROUP BY 
    order_status;
    
/* 5. Percentage of Late Deliveries */
   
SELECT 
    COUNT(*) AS total_orders,
    SUM(CASE 
            WHEN order_delivered_timestamp > order_estimated_delivery_date THEN 1 
            ELSE 0 
        END) AS late_deliveries,
    (SUM(CASE 
            WHEN order_delivered_timestamp > order_estimated_delivery_date THEN 1 
            ELSE 0 
        END) * 100.00 / COUNT(*)) AS late_delivery_percentage
FROM 
    ecommerce
WHERE 
    order_estimated_delivery_date IS NOT NULL 
    AND order_delivered_timestamp IS NOT NULL;
    
/* 6. Monthly Order Volume */
   
SELECT 
    strftime('%Y-%m', order_purchase_timestamp) AS order_month, 
    COUNT(*) AS total_orders
FROM 
    ecommerce
GROUP BY 
    order_month
ORDER BY 
    order_month;
   
/* 7. Number of Orders placed by State */

SELECT 
    customer_state, 
    COUNT(*) AS number_of_orders
FROM 
    ecommerce
GROUP BY 
    customer_state
ORDER BY 
    number_of_orders DESC;
   
  

