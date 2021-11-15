source commands-colors
source commands-environment-variables
source commands-postgres
source commands-print

print_double_line
set_sp_pg_storage

print_line
check_for_pg_storage_dir

print_line
pg_get_zipped_automation_dbs_filename
print_variable GZ_FILE

print_line
echo ${INFO} Removing gz extension
x="${GZ_FILE}"
y=${x%.gz}
z=${y##*/}

echo "${INFO} Filename:"
echo "${INFO}   $x"
echo "${INFO} Updated filename:"
echo "${INFO}   $z"
print_line

cd ${PG_STORAGE}

echo "${INFO} Expanded Files:"
tar -xvf ${z}

print_line
echo ${INFO} Done
print_double_line


