-- valor total de receita gerada por cliente de cada estado
-- apenas pedidos completos

SELECT 
        t2.customer_state,
        sum(t3.price) as receita_total_estado
        sum(t3.price) / count(DISTINCT t1.customer_id) AS avg_receita_cliente

FROM olist_orders_dataset AS t1

LEFT JOIN olist_customers_dataset AS t2
on t1.customer_id = t2.customer_id

LEFT JOIN olist_order_items_dataset AS t3
on t3.order_id = t1.order_id

WHERE t1.order_status = 'delivered'

GROUP BY t2.customer_state