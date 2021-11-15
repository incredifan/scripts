source ./commands-mongo
source ./commands-print

print_double_line
echo "${INFO} Starting Mongo ..."
mongo_start
echo "${INFO} Done."

cd ${DEV_TOOLS_HOME}


print_line
# set_time_now
echo "${INFO} Calling mongocopy ..."
./mongocopy
echo "${INFO} Done."
# set_time_now

print_double_line
