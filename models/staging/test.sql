{{ config(materialized='table') }}

    select *

    from {{ref('final_business')}}
