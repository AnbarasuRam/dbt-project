{{ config(materialized='table') }}

select
    commit,
    author.name author,
    committer.name committer,
    repo_name,
    author.date.seconds,
    {{ dbt_date.from_unixtimestamp("author.date.seconds") }} as commit_timestamp
from
    {{ref("raw_commits")}}