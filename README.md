# dbt

### General information
- The purpose of the project is to demonstrate a core of DBT functionalities such as dbt setup, model creation, Jinja templating, testing and documentation
- Materials created based on https://campus.datacamp.com/courses/introduction-to-dbt/ and https://app.datacamp.com/learn/courses/intermediate-dbt

### Dataset
- **Dataset** - TLC Trip Record Data from https://www.nyc.gov/site/tlc/about/tlc-trip-record-data.page

### dbt Models
| File                                | Description                                  |
|-------------------------------------|----------------------------------------------|
| `taxi_rides_raw.sql`               | Raw data from the source                     |
|  `taxi_rides_raw_from_source.sql`  | Very basic example of source's leverage 
| `total_creditcard_riders_by_day.sql` | Aggregation by payment method and date       |
| `total_amounts.sql`                | Demonstrates Jinja template usage            |
| `creditcard_riders_by_day.sql`     | Hierarchical model using Jinja macros        |



### Installation & Usage

#### Setup

###### Configure a fresh virtual environment
```bash
python -m venv dbt-venv
source dbt-venv/bin/activate
```
###### Install dbt awith DuckDB adapter

```bash
# Install dbt with DuckDB adapter
pip install dbt-core dbt-duckdb
```

###### Verify the installation
`dbt --version

###### Configure your database credentials`
- Create a file called _profiles.yml_ in `_%USERPROFILE%/.dbt_` (on Windows)
- Example content:
```yaml
nyc_yellow_taxi:
  outputs:
    dev:
      type: duckdb
      path: dev.duckdb
      threads: 1

    prod:
      type: duckdb
      path: prod.duckdb
      threads: 4

  target: dev
```
#### Usage

###### Run tests
```bash
dbt test --select nyc_yellow_taxi
```

##### seeds
- Seeds - sets of data which are external, not contained to the database
- seeds are located in *nyc_yellow_taxi/seeds* folder
- Use `dbt seed` in order to import seeds
- Example `nynj_zipcodes.csv` from *DataCamp - Intermediate dbt*


###### snapshots
- Snapshot definitions are located in *nyc_yellow_tax/snapshots* folder
- Use `dbt snapshot` in order to create snapshots

###### automate building
- Use `dbt run` to build and test with one command - `dbt run + dbt test + dbt snapshot + dbt seed`
- Use `dbt run -d` for debugging