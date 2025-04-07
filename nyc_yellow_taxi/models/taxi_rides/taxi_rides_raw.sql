with source_data as (
    select * from read_parquet('data/yellow_tripdata_2022-04.parquet')
)
select * from source_data