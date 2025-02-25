-- Produtos da categoria 'artes'

SELECT 
       COUNT(*) as qtde_linhas,
       COUNT(product_id) as qtde_produtos,
       COUNT(DISTINCT product_id) as qtde_produtos_distintos,
       COUNT(DISTINCT product_category_name) as qtde_categorias_distintas


FROM olist_products_dataset as t1

WHERE product_category_name = 'artes'