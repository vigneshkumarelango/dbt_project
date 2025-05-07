{{
    config (materialized='view')
}}
select product_code, 
       substring(product_name,1, position(' ' in product_name) -1) as brand,
       substring(product_name,position(' ' in product_name)) as model
from airbnb.dev.product