{{ config(materialized='table') }}

select
    repository,
    count(distinct commit) count_
from
    {{ref("commits")}}
group by 1
order by 1 desc