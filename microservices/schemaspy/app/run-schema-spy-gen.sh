#!/bin/bash

#this will work on mac, on linux change the ip
password=$1
docker run --rm -v=$(pwd)/src:/output matthewdodds/docker-schemaspy-postgres bash -c "java -jar schemaSpy.jar -t pgsql -db hasuradb -s public -host 192.168.99.1:5432  -dp postgresql-jdbc4.jar -u admin -p $password -o /output"
