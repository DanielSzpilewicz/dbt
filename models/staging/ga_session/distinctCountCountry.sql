SELECT  
date AS reportDate, 
device.operatingSystem AS operationSystem, 
COUNT(distinct(geoNetwork.country)) AS distinctCountCountry
FROM {{ source('google_analytics_sample', 'ga_sessions_*') }}
GROUP BY 1,2