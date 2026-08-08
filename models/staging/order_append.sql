{{ config(
    materialized="incremental",
    incremental_strategy="append",
    pre_hook="TRUNCATE TABLE {{ this }}",
    post_hook="delete from {{ this }} where id =1",

) }}

select * from {{source('datafeed_shared_schema','raw_orders')}}  limit 15
