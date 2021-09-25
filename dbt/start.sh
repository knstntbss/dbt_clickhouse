#!/bin/sh
dbt debug
dbt run-operation init_s3_sources
dbt deps
# grep -R "and table_name not ilike" 
bash
# dbt run-operation generate_source --args '{"schema_name": "dbt", "generate_columns": True, "include_descriptions": True}'
