SELECT t1.product_id, t1.product_category_name, t1.product_photos_qty

FROM olist_products_dataset AS t1

WHERE (t1.product_category_name = 'bebes'
AND t1.product_photos_qty > 1)
OR (t1.product_category_name = 'perfumaria'
AND t1.product_photos_qty > 5)