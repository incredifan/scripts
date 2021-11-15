source ./commands-git
source ./commands-print
source python-import-common

# Set all of the variables needed for this to work, including, but not limited to:
# * BIG_BRAIN_HOME        --> ~/bigbrain
# * PROJECTS_HOME         --> $BIG_BRAIN_HOME/projects
# * GITLAB_HOME           --> $BIG_BRAIN_HOME/gitlab
# * WORKSPACE             --> $PROJECTS_HOME/workspace
# * VENV_HOME             --> $WORKSPACE/.venv
# * APPLICATION_CODE_HOME --> $GITLAB_HOME/application-code
# * MY_SCRIPTS_HOME       --> $GITLAB_HOME/my-scripts
# * MY_RESOURCES_HOME     --> $1 (whatever is passed in)
# * TEST_SOURCE_FILE      --> $MY_RESOURCES_HOME/test.csv
#                             Note: Should probably change this one to $2
set_import_work_variables

# File to upload
# Note: Does this negate $TEST_SOURCE_FILE?
export TEST_FILENAME="test.csv"

echo "${INFO} Overriding develop code with feature code"
git checkout feature/feature-code
echo "${INFO}   Done."

print_line
cd ${MY_SCRIPTS_HOME}
print_current_directory

print_line
echo "${INFO} Uploading latest test.csv file"
cp ${TEST_SOURCE_FILE} ${WORKSPACE}/${TEST_FILENAME}
check_for_file ${WORKSPACE}/${TEST_FILENAME}

cat ${WORKSPACE}/${TEST_FILENAME}
exit 0
