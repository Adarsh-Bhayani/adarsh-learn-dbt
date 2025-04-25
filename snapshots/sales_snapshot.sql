{% snapshot sales_snapshot %}

{{
    config(

        target_schema='snapshot',
        unique_key='id',
        strategy='timestamp',
        updated_at='last_updated'
    )
}}

select *
from {{ref('sales_data')}}
{% endsnapshot %}