from python:3.8
# устанавливаем nano - текстовый редакторю, -y установка без подтвержедия, apt update притягивает последние версии пакетов
run apt update && apt install -y nano 
# устанавливаем dbt и коннектор clickhouse
run pip install dbt==0.20.0 dbt-clickhouse==0.20.0
# закидываем файлы в докер
copy ./profiles.yml /root/.dbt/profiles.yml
# инициализируем проект clickhouse
run dbt init clickhouse_starschema
# копируем макрос sql в папку проекта в текущем образе
copy ./init_s3_sources.sql /clickhouse_starschema/macros/init_s3_sources.sql
copy ./dbt_project.yml /clickhouse_starschema/dbt_project.yml
copy ./packages.yml /clickhouse_starschema/packages.yml
copy ./start.sh /clickhouse_starschema/start.sh
copy ./sources.yml /clickhouse_starschema/models/sources.yml
# задаем рабочую директорию
workdir /clickhouse_starschema
# команда, которая запускается при старте контейнера
cmd bash
