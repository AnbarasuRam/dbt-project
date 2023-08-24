{{ config(materialized='table') }}

select *
FROM {{source("cars_database","cars")}}