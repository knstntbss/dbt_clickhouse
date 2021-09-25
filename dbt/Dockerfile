from python:3.8
run apt update && apt install -y nano
run pip install dbt==0.20.0 dbt-clickhouse==0.20.0
copy ./profiles.yml /root/.dbt/profiles.yml
run dbt init clickhouse_starschema
copy ./init_s3_sources.sql /clickhouse_starschema/macros/init_s3_sources.sql
copy ./dbt_project.yml /clickhouse_starschema/dbt_project.yml
copy ./packages.yml /clickhouse_starschema/packages.yml
copy ./start.sh /clickhouse_starschema/start.sh
copy ./sources.yml /clickhouse_starschema/models/sources.yml

workdir /clickhouse_starschema
cmd bash
