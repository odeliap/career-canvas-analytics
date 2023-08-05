select
status,
count(*) * 100.0 / (select count(*) from job_statuses) as percentage
from job_statuses
group by status