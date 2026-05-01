-- 03_import_data.sql
-- Imports raw CSV into staging table using MySQL LOCAL INFILE via Workbench
-- Run as root after table is created (01_create_tables.sql)
-- Update the INFILE path and table name below before running
-- Note: LINES TERMINATED BY '\r\n' — if import returns 0 rows, try '\n'

TRUNCATE TABLE <database_name>.<table_name>;

LOAD DATA LOCAL INFILE 'C:/project_path/data/raw/dataset.csv'
INTO TABLE <database_name>.<table_name>
FIELDS TERMINATED BY ',' ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 LINES
(
    -- column1,
    -- column2,
    -- column3
);