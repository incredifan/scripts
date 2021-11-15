#!/bin/sh

source commands-print
source commands-vpn

print_double_line

source commands-environment-variables
set_pg_storage
print_pg_storage
check_for_pg_storage_dir

print_line
echo "${INFO} Starting VPN ..."
vpn_connect
echo "${INFO} Done."
 
print_line
source commands-postgres
echo "${INFO} Getting zipped db's filename ..."
pg_get_zipped_dbs_filename qa

print_line
print_variable GZ_FILE

print_line
cd ${PG_STORAGE}
print_current_directory
 
print_line
gunzip ${GZ_FILE}

print_line
check_for_file ${GZ_FILE}
 
print_line
remove_gz_extension ${GZ_FILE}

print_line
print_variable TAR_FILENAME

print_line
echo "${INFO} DONE"
