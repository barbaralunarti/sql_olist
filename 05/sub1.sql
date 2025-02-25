-- a receita por estado do seller, por produto das 3 categorias mais vendidas
select
        t2.seller_state,
        t1.product_id,
        t3.product_category_name,
        sum(t1.price) as receita_total

from olist_orders_dataset as t1

left join olist_sellers_dataset as t2
on t1.seller_id = t2.seller_id

left join olist_products_dataset as t3
on t1.product_id = t3.product_id

where product_category_name in (

        select t2.product_category_name
        from olist_order_items_dataset as t1
        left join olist_products_dataset as t2
        on t1.product_id = t2.product_id
        group by t2.product_category_name
        order by count(*) desc
        limit 3
)

group by t2.seller_state,
         t1.product_id,
         t3.product_category_name