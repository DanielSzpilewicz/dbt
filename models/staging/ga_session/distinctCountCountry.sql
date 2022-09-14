SELECT date as reportDate, device.operatingSystem as operationSystem, count(distinct(geoNetwork.country)) as distinctCountCountry
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
group by 1,2