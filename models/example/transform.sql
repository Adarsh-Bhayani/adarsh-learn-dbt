
{{ config(materialized = 'table')}}


select 
 country ,
 state ,
 count(order_id) as total_order,
 count(customer_id) as total_customer,
 sum(sales) as total_sales,
 sum(profit) as total_profit
from {{ source('sample','orders') }}
group by country , state 


