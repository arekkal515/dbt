

-- Update SQL to use Jinja reference
-- it creates a hierarchy - taxi_rides_raw is created before
select
   date_part('day', tpep_pickup_datetime) as day,
   count(*) as total_riders
from {{ref('taxi_rides_raw')}}
where payment_type = 1
group by day