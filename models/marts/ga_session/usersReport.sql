WITH 
    totalPageViews AS (
    SELECT * FROM {{ ref('totalPageViews')}}
),

    distinctCountCountry AS (
    SELECT * FROM {{ ref('distinctCountCountry')}}
),

usersReport AS (
    SELECT dcc.reportDate, 
    dcc.operationSystem, 
    dcc.distinctCountCountry, 
    tpv.totalPageViews
    FROM distinctCountCountry AS dcc
    FULL OUTER JOIN totalPageViews tpv
    ON dcc.reportDate = tpv.reportDate 
    AND dcc.operationSystem = tpv.operationSystem
)

SELECT * FROM usersReport
order by reportDate desc
