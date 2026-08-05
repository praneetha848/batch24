{{ config(materialized='table') }}

    select id,
    order_date,
    user_id,
    status

    from {{source('datafeed_shared_schema','raw_orders')}}
