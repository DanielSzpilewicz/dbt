{{
    config(
        materialized = 'view'
    )
}}

with 
    totalPageViews as (
    select * from {{ ref('totalPageViews')}}
),

    distinctCountCountry as (
    select * from {{ ref('distinctCountCountry')}}
),

usersReport as (
    select dcc.reportDate, dcc.operationSystem, dcc.distinctCountCountry, tpv.totalPageViews
    from distinctCountCountry as dcc
    inner join totalPageViews tpv
    on dcc.reportDate = tpv.reportDate 
    and dcc.operationSystem = tpv.operationSystem
)

Select * from usersReport
