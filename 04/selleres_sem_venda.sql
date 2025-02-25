-- sem vendas em 2017-12

select 
        t2.seller_id,
        t3.seller_state

from olist_orders_dataset as t1

left join olist_order_items_dataset as t2
on t1.order_id = t2.order_id

left join olist_sellers_dataset as t3
on t3.seller_id = t2.seller_id

where t1.order_approved_at < '2018-01-01'
and t1.order_status = 'delivered'

group by t2.seller_id, t3.seller_state

having max(case when strftime('%Y-%m', order_approved_at) = '2017-12' then 1
             else 0
        end) = 0