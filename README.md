# career-canvas-analytics
Analytics for Career Canvas Project

## Necessary installations

Install dbt for postgres with:

```
pip install dbt-postgres
```

## Models

There are different models included in this project for varying analytics usages.

### Job Status Breakdown

To see the job status breakdown model, run:

```
dbt run --model job_status_breakdown --vars '{"user_id": "1"}'
```

where `1` here should be replaced with the actual user id.