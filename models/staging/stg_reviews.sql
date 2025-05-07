{{
    config(materialized = 'incremental',
           unique_key = 'listing_id')
}}
select listing_id,
       date::date as date,
       reviewer_name,
       initcap(comments) as comments,
       upper(sentiment) as sentiment
from airbnb.raw.raw_reviews
{% if  is_incremental() %}
where listing_id > (select max(listing_id) from {{ this }})
{% endif %}
