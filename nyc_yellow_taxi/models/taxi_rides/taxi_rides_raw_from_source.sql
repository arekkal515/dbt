{{ config(materialized='view')}}

select * from {{ source('main', 'taxi_rides_raw')}}
