-- tempo entre vendas dos sellers

with olist_seller_order as (

    select t1.order_id,
           date(t1.order_approved_at) as data_venda,
           t2.seller_id

    from olist_orders_dataset as t1

    left join olist_order_items_dataset as t2
    on t1.order_id = t2.order_id

    where order_status = 'delivered'

),

olist_seller_order_sort as (

    select *,
           row_number() over (partition by seller_id, data_venda) as date_seller_order

    from olist_seller_order
),

olist_seller_lag_data as (

    select order_id,
            seller_id,
            data_venda,
            lag(data_venda) over (partition by seller_id order by data_venda) as lag_data_venda

    from olist_seller_order_sort
    where date_seller_order = 1
),

olist_tempos_vendas_seller as (
    select *,
        julianday(data_venda) - julianday(lag_data_venda) as diff_dias

    from olist_seller_lag_data

    where lag_data_venda is not null
)

select seller_id,
       avg(diff_dias) as tempo_medio_venda

from olist_tempos_vendas_seller
group by seller_id
