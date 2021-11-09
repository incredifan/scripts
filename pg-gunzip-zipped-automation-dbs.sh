source commands-environment-variables
source commands-postgres
source commands-print
source commands-system

print_double_line
echo "${INFO} Getting zipped db's filename for automation environment..."
pg_get_zipped_dbs_filename automation
echo "${INFO} Done"

print_line
print_variable GZ_FILE

print_line
set_sp_pg_storage
cd ${SP_PG_STORAGE}
print_current_directory

print_line
check_for_file $GZ_FILE
RETURN_CODE=$?
print_variable RETURN_CODE
if [[ $RETURN_CODE = 0 ]]
then
  echo "${INFO} File not found ... continuing in case it's already been unzipped, but not untarred."
else
  print_line
  gunzip ${GZ_FILE}
fi

# print_line
# check_for_file ${GZ_FILE}
 
print_line
remove_gz_extension ${GZ_FILE}

print_line
print_variable TAR_FILENAME

print_line
echo "${INFO} DONE"
