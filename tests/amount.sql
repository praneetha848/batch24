select
 id,
 sum(spent) as total_amount
from {{ ref('snap_customers_timestamp')}}
group by 1
having total_amount < 0