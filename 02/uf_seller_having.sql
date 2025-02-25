SELECT seller_state,
       count(*) AS qtde_sellers

FROM olist_sellers_dataset

-- filtro pré agg (agregação)
WHERE seller_state in ('SP', 'RJ', 'PR', 'AC')

-- agregação
GROUP BY seller_state

-- filtro pós agregação
HAVING count(*) > 10 -- remove estados com menos de 10 sellers