{{
    config(
        materialized="incremental",
        user_id=var("user_id")
    )
}}

select
status,
count(*) * 100.0 / (select count(*) from job_statuses where "user_id"={{ var("user_id") }}) as percentage
from job_statuses
where "user_id"={{ var("user_id") }}
group by status