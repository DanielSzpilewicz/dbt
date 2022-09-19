WITH num_of_days AS (
    SELECT 
    MIN(reportDate) AS start_date, 
    MAX(reportDate) AS end_date, 
    COUNT(DISTINCT(reportDate)) AS num_of_days
    FROM {{ref('usersReport')}} AS ur
) 

SELECT * FROM num_of_days