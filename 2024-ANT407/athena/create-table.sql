CREATE EXTERNAL TABLE `input_sensor_input_data`(
  `col0` string, 
  `col1` string, 
  `col2` bigint, 
  `col3` string, 
  `col4` bigint, 
  `col5` string, 
  `col6` bigint, 
  `col7` double, 
  `col8` double, 
  `col9` double, 
  `col10` double, 
  `col11` double, 
  `col12` double, 
  `col13` double, 
  `col14` double, 
  `col15` double, 
  `col16` double, 
  `col17` double, 
  `col18` double, 
  `col19` double, 
  `col20` double, 
  `col21` double, 
  `col22` double, 
  `col23` double, 
  `col24` double, 
  `col25` double, 
  `col26` double, 
  `col27` double)
PARTITIONED BY ( 
  `partition_0` string, 
  `partition_1` string, 
  `partition_2` string, 
  `partition_3` string)
ROW FORMAT DELIMITED 
  FIELDS TERMINATED BY ',' 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://room-aggregated-sensor-data-bucket/sensor_input_data/'