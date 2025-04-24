
select *
from {{ ref('transform') }}
where country = 'India'
