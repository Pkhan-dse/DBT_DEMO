select 
*
from {{ source('DemoSource', 'Bike') }}

limit 10