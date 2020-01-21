# Hive 3 Table setup using the TPCDS Dataset

## Configuration issues
* Load the TPCDS data files form the local project data directory into the HDFS /data/tpcds directory
```
cd /data/tpcds
hdfs dfs -put . /data/tpcds
```
* Run the setup_tables/tpcds-cr-hive.sql hive script to create the tables and load the data into the tables
Make certain the tpcds-cr-hive.sql script exists in this director
```
cd ../../data
ls -lt tpcds-ct-hive.sql
beeline 
```
* confirm that the tables are accessible to Hive via Beeline
* Setup the JDBC Hive driver: https://docs.cloudera.com/HDPDocuments/HDP3/HDP-3.1.4/integrating-hive/content/hive_locate_the_jdbc_driver.html


## Baseline Hive 3 query tests
### Without LLAP

### With LLAP
* Run the TPCDS query set for Hive via JMeter (Hive