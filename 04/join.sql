-- product_id é a chave primária de ambas as tabelas, logo a intersecção de busca

select 
       t2.product_category_name,
       sum(t1.price) as receita,
       count(*) as total_itens_vendidos,
       count(distinct t1.order_id) as qtde_pedidos,
       round(count(*) / cast(count(distinct t1.order_id) as float), 2) as avg_item_por_pedido

from olist_order_items_dataset as t1

left join olist_products_dataset as t2

on t1.product_id = t2.product_id

group by t2.product_category_name

order by count(*) / cast(count(distinct t1.order_id) as float) desc

limit 20
