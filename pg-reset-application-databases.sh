source commands-aws
source commands-environment-variables
source commands-system
source commands-postgres
source commands-print

print_double_line
ENVIRONMENT=${1}
if [[ -z "$1" ]]; then
  echo "${ERROR} You must provide an environment."
  echo "${ERROR} Valid Options are: QA,STAGING,PRODUCTION"
  print_double_line
  exit 1
else 
  echo "${INFO} Resetting Postgres by copying data from ${ENVIRONMENT} environment."
fi

print_line
print_variable S3_POSTGRES_BACKUP_HOME
SOURCE=${S3_POSTGRES_BACKUP_HOME}/${ENVIRONMENT}
print_variable SOURCE

print_line
set_pg_storage
print_pg_storage
DESTINATION=${PG_STORAGE}
print_variable DESTINATION

print_line
pg_get_zipped_dbs_filename ${1}
if [[ -z "$dumpname" ]]; then
  echo "${ERROR} Dumpname not set"
  exit 2
fi

# Postgres isn't immediately ready, so wait a few seconds before interacting.
echo "${INFO} Postgres isn't immediately ready, so waiting a few seconds..."
pg_start
sleep 10

print_line
echo "${INFO} Terminating Connections"
pg_terminate_connections

print_line
echo "${INFO} Dropping databases"
pg_drop_dbs ${ENVIRONMENT}

print_line
pg_create_dbs ${ENVIRONMENT}

print_line
echo "${INFO} Downloading backup file"
print_variable SOURCE
print_variable DESTINATION
print_variable GZ_FILE
aws_cp_file $SOURCE $DESTINATION $GZ_FILE

print_line
pg_restore_databases ${ENVIRONMENT}

print_line
pg_rename_sp_dbs ${ENVIRONMENT}

print_line
pg_drop_db_a
pg_drop_db_b

print_line
pg_create_db_a
pg_create_db_b

print_line
echo "${INFO} Done"
print_double_line


