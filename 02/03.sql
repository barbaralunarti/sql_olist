-- Query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria
-- apenas objetos que tenham a descrição maior que 100

SELECT product_category_name,
       avg(product_name_lenght) AS tamanho_media_nome,
       max(product_name_lenght) AS tamanho_max_nome,
       min(product_name_lenght) AS tamanho_min_nome

FROM olist_products_dataset

WHERE product_description_lenght >= 100

GROUP BY product_category_name