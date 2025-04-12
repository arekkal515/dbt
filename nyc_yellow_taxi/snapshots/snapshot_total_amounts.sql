{% snapshot snapshot_total_amounts %}

{{
    config(
        target_schema='snapshots',
        strategy='timestamp',
        unique_key= 'VendorID||tpep_pickup_datetime',
        updated_at = 'tpep_dropoff_datetime'
    )}}

select * from {{ ref('taxi_rides_raw') }}
{% endsnapshot %}