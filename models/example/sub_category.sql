
{{ config(materialized = 'table')}}

select category ,sub_category,sum(profit) as total_profit
from orders
group by category , sub_category

