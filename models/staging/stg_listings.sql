{{ config(
    materialized='table',
    pre_hook=["CREATE OR REPLACE TABLE stg_listings
                    (id integer,
                     listing_url string,
                     name string,
                     room_type string,
                     minimum_nights integer,
                     host_id integer,
                     price string,
                     created_at datetime,
                     updated_at datetime);"]
) }}

SELECT id,listing_url,name,room_type,minimum_nights,host_id,price,created_at,updated_at FROM airbnb.raw.raw_listings