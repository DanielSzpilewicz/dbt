SELECT 
date AS reportDate, 
device.operatingSystem AS operationSystem, 
SUM(totals.pageviews) AS totalPageViews
FROM {{ source('google_analytics_sample', 'ga_sessions_*') }}
GROUP BY 1,2