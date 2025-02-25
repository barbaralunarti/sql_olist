-- Query que apresente o tamanho médio, máximo e mínimo do nome do objeto por categoria
-- apenas os objetos que tenham a descrição maior que 100
-- exiba apenas as categorias com tamanho médio de descrição do objeto maior que 500 caracteres

SELECT product_category_name,
       avg(product_name_lenght) AS tamanho_avg_nome,
       max(product_name_lenght) AS tamanho_max_nome,
       min(product_name_lenght) AS tamanho_min_nome

FROM olist_products_dataset

WHERE product_description_lenght > 100

GROUP BY product_category_name

HAVING avg(product_description_lenght) > 500

ORDER BY min(product_name_lenght) DESC, max(product_name_lenght) DESC
