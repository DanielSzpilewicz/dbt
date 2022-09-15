SELECT date as reportDate, device.operatingSystem as operationSystem, count(distinct(geoNetwork.country)) as distinctCountCountry
FROM {{ source('google_analytics_sample', 'ga_sessions_*') }}
group by 1,2