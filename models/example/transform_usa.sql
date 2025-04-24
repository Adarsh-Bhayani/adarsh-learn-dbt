select *
from {{ ref('transform') }}
where country = 'United States'