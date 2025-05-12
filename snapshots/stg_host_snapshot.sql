{% snapshot stg_host_snapshot %}

{{
  config(
    target_schema='snapshots',
    unique_key='id',
    strategy='check',
    check_cols=['updated_at']
  )
}}

SELECT * FROM {{ source('raw_host_data', 'raw_hosts') }}

{% endsnapshot %}
