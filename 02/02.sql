-- Query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria

SELECT product_category_name,
       avg(product_name_lenght) as avg_tamanho,
       max(product_name_lenght) as max_tamanho,
       min(product_name_lenght) as min_tamanho

FROM olist_products_dataset

GROUP BY product_category_name