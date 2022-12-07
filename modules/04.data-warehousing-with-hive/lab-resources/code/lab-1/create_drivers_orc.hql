SET hivevar:hiveUsername=yanis;

CREATE TABLE IF NOT EXISTS esgf_2022_fall_bda_1.${hiveUsername}_nyc_drivers (
  driver_id INT,
  first_name STRING,
  last_name STRING,
  ssn INT,
  address STRING,
  certified BOOLEAN,
  wage_plan STRING
)
STORED AS ORC;
