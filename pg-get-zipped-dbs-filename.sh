cd $PG_STORAGE
env=qa
dumpname=`aws s3 ls ${S3_POSTGRES_BACKUP_HOME}/${env}/ | awk '{print $4}' | tail -n 1`

echo "${INFO} Dumpname:"
echo "${INFO}   $dumpname"
export GZ_FILE=${dumpname}
echo "${INFO} Getting GZ Filename:"
echo "${INFO}   ${GZ_FILE}"
