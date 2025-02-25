-- Produtos acima de 5 litros

SELECT COUNT(*),
       COUNT(DISTINCT product_id)

FROM olist_products_dataset

WHERE product_length_cm * product_height_cm * product_width_cm / 1000 > 5