source commands-aws
source commands-colors
source commands-environment-variables
source commands-git
source commands-print
source commands-python
source commands-tools

print_double_line
print_big_brain_home

print_line
print_projects_home

print_line
set_csh_home
print_csh_home

print_line
set_venv_csh
print_venv_csh

print_line
echo "Creating Python Virtual Environment for CSH"
venv_create ${VENV_CSH}

print_line
echo "Activating Python Virtual Environment for CSH"
venv_activate ${VENV_CSH}

print_line
print_gitlab_home

print_line
set_csh_source_home
print_csh_source_home

print_line
get_latest_import_work

print_line
echo "Getting development branch"
git checkout feature/<feature>

print_line
echo "Copying requirements.txt from source"
cp ${CSH_SOURCE_HOME}/requirements.txt ${VENV_CSH}

print_line
echo "Installing packages via requirements.txt"
venv ${VENV_CSH}

print_line
set_downloads_home
print_variable DOWNLOADS_HOME

print_line
echo "Uploading test.csv to bucket"

awslocal_upload_test_csh
awslocal_ls_bucket_csh

exit
