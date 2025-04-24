select sub_category,sum(profit) as total_profit
from orders
group by sub_category
