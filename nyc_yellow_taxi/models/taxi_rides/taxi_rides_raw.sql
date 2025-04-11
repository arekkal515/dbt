with source_data as (
    select * from read_parquet('data/yellow_tripdata_2022-04.parquet')
)
select * from source_data
where payment_type != 0
limit 1000