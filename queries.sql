SELECT *
FROM bigquery-public-data.stackoverflow.INFORMATION_SCHEMA.TABLES

SELECT *
FROM bigquery-public-data.stackoverflow.__TABLES__;

SELECT project_id, dataset_id, table_id as table_name, CAST(TIMESTAMP_MILLIS(creation_time) AS DATETIME) as creation_time,  CAST(TIMESTAMP_MILLIS(last_modified_time) AS DATETIME) as last_modified_time, row_count, size_bytes / POW(10,9) as GB, type
FROM bigquery-public-data.stackoverflow.__TABLES__;

SELECT *
FROM bigquery-public-data.stackoverflow.INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_NAME = 'posts_questions'
