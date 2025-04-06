
-- Update with SQL to return requested information
select
  date_part('day', tpep_pickup_datetime) as day,
  count(*) as total_cc_riders
from taxi_rides_raw
-- Refer to the Payment_type in schema doc
where payment_type = 1
group by day
