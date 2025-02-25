select
    distinct case when product_category_name is null then 'outros'
                  else product_category_name
             end as categoria_fillna

from olist_products_dataset

order by categoria_fillna

