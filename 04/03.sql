-- peso médio dos produtos vendidos por seller de cada estado
-- apenas 2017 e pedidos entregues

SELECT
        t4.seller_state,
        avg(t3.product_weight_g) as avg_peso_produto

FROM olist_orders_dataset as t1

left join olist_order_items_dataset as t2
on t1.order_id = t2.order_id

left join olist_products_dataset as t3
on t2.product_id = t3.product_id

left join olist_sellers_dataset as t4
on t2.seller_id = t4.seller_id

where t1.order_status = 'delivered'
and strftime("%Y", order_approved_at) = '2017'

group by t4.seller_state