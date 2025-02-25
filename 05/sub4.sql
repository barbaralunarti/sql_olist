-- a receita por estado do seller, por produto das 3 categorias mais vendidas
-- apenas vendas entregues

with olist_best_categoria as (

    select t2.product_category_name

    from olist_order_items_dataset as t1

    left join olist_products_dataset as t2
    on t1.product_id = t2.product_id

    group by t2.product_category_name
    order by count(*) desc

    limit 3
),

olist_venda as (
    select *
    from olist_orders_dataset as t1
    where t1.order_status = 'delivered'
),

olist_receita_estado_produto as (
    select
        t2.seller_state,
        t1.product_id,
        t3.product_category_name,
        sum(t1.price) as receita_total

    from olist_order_items_dataset as t1

    left join olist_sellers_dataset as t2
    on t1.seller_id = t2.seller_id

    left join olist_products_dataset as t3
    on t1.product_id = t3.product_id

    inner join olist_venda as t4
    on t1.order_id = t4.order_id

    group by t2.seller_state,
             t1.product_id,
             t3.product_category_name
)

select *
from olist_receita_estado_produto as t1

inner join olist_best_categoria as t2
on t1.product_category_name = t2.product_category_name