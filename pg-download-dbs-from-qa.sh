#!/bin/sh

source commands-print
print_double_line

source commands-environment-variables
set_pg_storage
print_pg_storage
cd $PG_STORAGE

env=qa
dumpname=`aws s3 ls ${S3_POSTGRES_BACKUP_HOME}/${env}/ | awk '{print $4}' | tail -n 1`

set_variable GZ_FILE ${dumpname}
print_variable GZ_FILE

print_line
aws s3 cp ${S3_POSTGRES_BACKUP_HOME}/${env}/${GZ_FILE} ${PG_STORAGE}/${GZ_FILE}

