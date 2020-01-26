rm -rf MinioTPCDS-Test-Results/*
rm -rf *.log
rm -rf *.csv
jmeter -t Minio_Test_template.jmx -e -o MinioTPCDS-Test-Results -n -l MinioTPCDS-Test.log

