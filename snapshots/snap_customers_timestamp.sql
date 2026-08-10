{% snapshot  snap_customers_timestamp %}

{{
 config(
 strategy='timestamp',
 unique_key='id',
 updated_at='load_time',
 invalidate_hard_deletes=True
 )
}}
select *, {{macro_amount('spent')}} as spent_percentage
from {{source('datafeed_shared_schema','customers')}}

{% endsnapshot %}
