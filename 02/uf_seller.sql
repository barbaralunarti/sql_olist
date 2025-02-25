SELECT t1.*

FROM (

    SELECT seller_state,
           count(*) AS qtde_sellers

    FROM olist_sellers_dataset

    --where seller_state IN ('SP','RJ','PR')

    GROUP BY seller_state

) AS t1

WHERE t1.qtde_sellers > 10