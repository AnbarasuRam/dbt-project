{{ config(materialized='table') }}

SELECT * FROM `bigquery-public-data.github_repos.commits` LIMIT 10000