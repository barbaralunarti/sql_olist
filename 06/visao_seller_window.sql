-- Qual o produto mais caro que o seller já vendeu
-- pedidos entregues

with olist_seller_product as (
    select seller_id,
           product_id,
           count(*) as qtde_produto,
           sum(price) as receita_produto

    from olist_orders_dataset as t1

    left join olist_order_items_dataset as t2
    on t1.order_id = t2.order_id

    where order_status = 'delivered'

    group by seller_id,
            product_id

    order by seller_id
),

olist_seller_sort as (
    select *,
        row_number() over ( partition by seller_id
                            order by qtde_produto desc, receita_produto desc) as order_qtde

    from olist_seller_product
)

select seller_id,
       product_id,
       qtde_produto
from olist_seller_sort

where order_qtde = 1

-- = 1 é o produto mais vendido por seller e <= 5 são os 5 mais vendidos