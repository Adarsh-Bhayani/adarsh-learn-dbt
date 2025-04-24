{{ config(materialized = 'table') }}

select *
from orders
where order_date >= current_date

{% if is_incremental() %}
  and order_date > select max(order_date) from {{this}}
{% endif %}