{{
    config(
        materialized = 'table'
    )
}}

SELECT date as reportDate, device.operatingSystem as operationSystem, sum(totals.pageviews) as totalPageViews
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
group by 1,2