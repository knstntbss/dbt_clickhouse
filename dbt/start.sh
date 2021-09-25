dbt run-operation init_s3_sources
dbt deps
dbt run-operation generate_source --args '{"schema_name": "dev", "generate_columns": True, "include_descriptions": True}'