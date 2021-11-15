source commands-postgres
source commands-print

print_double_line
echo "${INFO} Terminating Postgres connections ..."
pg_terminate_connections

print_line
echo "${INFO} Done"
print_double_line
