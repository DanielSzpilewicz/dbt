Select totalPageViews
from {{ ref('totalPageViews')}}
where totalPageViews.totalPageViews < 0