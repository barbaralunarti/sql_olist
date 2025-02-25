-- Query que apresente o tamanho médio, máximo e mínimo da descrição do objeto por categoria

SELECT product_category_name,
       avg(product_description_lenght) as tamanho_medio,
       max(product_description_lenght) as tamanho_max,
       min(product_description_lenght) as tamanho_min

FROM olist_products_dataset

GROUP BY product_category_name