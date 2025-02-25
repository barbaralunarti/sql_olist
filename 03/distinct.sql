SELECT DISTINCT product_category_name

FROM olist_products_dataset

-- excluir dados null
WHERE product_category_name IS NOT NULL

ORDER BY product_category_name