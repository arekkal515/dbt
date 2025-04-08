-- verify if a trip duration is not 0
select *
from taxi_rides_raw
where tpep_pickup_datetime = tpep_dropoff_datetime
