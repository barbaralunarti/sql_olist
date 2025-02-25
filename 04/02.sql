-- valor total receita por sellers de cada estado
-- apenas pedidos entregues

SELECT
        t3.seller_state,
        sum(t2.price) as receita_total,
        sum(t2.price) / count(DISTINCT t2.seller_id) as avg_receita_seller,
        count(DISTINCT t2.seller_id) as qtde_sellers

FROM olist_orders_dataset as t1

left join olist_order_items_dataset as t2
on t1.order_id = t2.order_id

left join olist_sellers_dataset as t3
on t2.seller_id = t3.seller_id

where t1.order_status = 'delivered'

group by t3.seller_state