SET hivevar:clusterUsername=teacher;
-- DO NOT USE '.' NOR '-' IN HIVEUSERNAME
SET hivevar:hiveUsername=teacher;

CREATE EXTERNAL TABLE IF NOT EXISTS esgf_2022_fall_bda_1.${hiveUsername}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
STORED AS TEXTFILE
LOCATION '/education/esgf_2022_fall_bda_1/${clusterUsername}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
