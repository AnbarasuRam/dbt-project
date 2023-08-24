{{ config(materialized='table') }}

select
    commit,
    author,
    committer,
    commit_timestamp,
    repository
from
    {{ref("stg_commits")}}
    cross join unnest(repo_name) repository