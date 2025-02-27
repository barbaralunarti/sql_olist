SELECT 
       product_category_name,
       max(product_weight_g) as maior_peso,
       min(product_weight_g) as menor_peso,
       avg(product_weight_g) as avg_peso

FROM olist_products_dataset

-- where antes do group by (filtro)
WHERE product_category_name IS NOT NULL
AND product_category_name != 'alimentos'
AND product_category_name <> 'agro_industria_e_comercio'

GROUP BY product_category_name