# dbt

### General information
- The purpose of the project is to demonstrate a core of DBT functionalities such as dbt setup, model creation, Jinja templating, testing and documentation
- Materials created based on https://campus.datacamp.com/courses/introduction-to-dbt/

### Dataset
- **Dataset** - TLC Trip Record Data from https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page

### dbt Models
| File                                | Description                                  |
|-------------------------------------|----------------------------------------------|
| `taxi_rides_raw.sql`               | Raw data from the source                     |
| `total_creditcard_riders_by_day.sql` | Aggregation by payment method and date       |
| `total_amounts.sql`                | Demonstrates Jinja template usage            |
| `creditcard_riders_by_day.sql`     | Hierarchical model using Jinja macros        |



### Installation & Usage

```bash
# Install dbt with DuckDB adapter
pip install dbt-core dbt-duckdb
```
#### testing
```bash
dbt test --select nyc_yellow_taxi
```
