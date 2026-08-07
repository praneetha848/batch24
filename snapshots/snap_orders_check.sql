{% snapshot snap_orders_check %}
 {{
config(
 target_schema='snapshots_schema',
 strategy='check',
 unique_key='id',
check_cols=['order_date','status'],
 invalidate_hard_deletes=True
 )
 }}
 select * from {{ source('datafeed_shared_schema', 'raw_orders') }} limit 10

{% endsnapshot %}
