source commands-environment-variables
source commands-print

print_double_line
set_pg_storage
print_pg_storage
cd $PG_STORAGE

print_line
echo "${INFO} Getting filename ..."
env=automation
dumpname=`aws s3 ls s3://backups/postgres/${env}/ | awk '{print $4}' | tail -n 1`
echo "${INFO} Done."

print_line
set_variable GZ_FILE ${dumpname}
print_variable GZ_FILE

print_line
print_variable S3_POSTGRES_BACKUP_HOME

print_line
COMMAND="aws s3 cp ${S3_POSTGRES_BACKUP_HOME}/${env}/${GZ_FILE} ${PG_STORAGE}/${GZ_FILE}"
print_variable COMMAND

print_line
# `${COMMAND}`
eval $COMMAND

exit

# COMMAND="aws s3 cp s3://backups/postgres/${env}/${dumpname} ${PG_STORAGE}/${dumpname}"
print_variable COMMAND

print_line
echo "${INFO} Done
print_double_line
