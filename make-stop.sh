source ./commands-environment-variables

echo "Attempting to stop SP Platform"
check_variable DEV_TOOLS_HOME

cd ${DEV_TOOLS_HOME}
make stop 

