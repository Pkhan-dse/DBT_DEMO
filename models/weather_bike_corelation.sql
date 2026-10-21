WITH CTE AS (

select
t.*,
w.*

from {{ ref('trip_fact') }} AS t
left join {{ ref('daily_weather') }} AS w
on t.TRIP_DATE = w.DAILY_WEATHER

order by TRIP_DATE desc
)
select
*
from CTE