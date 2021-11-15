source commands-git
source commands-print
source commands-python

print_double_line 
echo "${INFO} Verifying validation of utility"
print_line
echo "${INFO} Checking Environment Variables ..."
set_import_work_variables
echo "${INFO} Done"
print_line

cd ${WORKSPACE}
venv_activate ${WORKSPACE}/venv-import-work

cd_project_source_home

echo "${INFO} Getting latest development code"
git_latest_develop

echo "${INFO} Overriding develop code with feature code"
git checkout feature/<feature_number>

echo "${INFO} Done"

USERNAME=${USERNAME}
PASSWORD=${PASSWORD}

<python_command>

exit


