Select distinctCountCountry
from {{ ref('distinctCountCountry')}}
where distinctCountCountry.distinctCountCountry < 0