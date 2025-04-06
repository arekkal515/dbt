#!/usr/bin/env python3

import duckdb

con = duckdb.connect("dev.duckdb", read_only=True)

print(con.sql("""
    SELECT table_name, table_type
    FROM information_schema.tables
    WHERE table_schema = 'main'
""").fetchdf())