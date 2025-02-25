-- Criar nova coluna que contenha a informação de volume em m^3

SELECT *,
        product_length_cm * product_height_cm * product_width_cm / 1000000 as product_vol_m3

FROM olist_products_dataset