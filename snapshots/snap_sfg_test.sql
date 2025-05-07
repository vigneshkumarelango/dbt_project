{% snapshot snap_sfg_test %}

{{
  config(
    target_schema='dev_raw',
    strategy = 'check',
    check_cols=['status'], 
    unique_key='id',
  )
}}

select *
from airbnb.raw.stg_test

{% endsnapshot %}
