-- substituir null por 'outros'

select distinct coalesce(product_category_name, 'outros') as categoria_fillna

from olist_products_dataset