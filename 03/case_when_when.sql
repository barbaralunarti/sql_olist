-- 3 formas de when

select
    distinct case when product_category_name is null then 'outros'

                  when product_category_name = 'alimentos'
                       or product_category_name = 'alimentos_bebidas' then 'alimentos'

                  when product_category_name in ('rtes', 'artes_e_artesanato') then 'artes'

                  when product_category_name like "%artigos%" then "artigos"

                  else product_category_name
             end as categoria_fillna

from olist_products_dataset

order by categoria_fillna