#!/bin/zsh

source commands-aws
source commands-environment-variables
source commands-file-system
source commands-print
source commands-python

# ----------------------- #
# Set and Print Variables #
# ----------------------- #
print_double_line
print_big_brain_home

set_projects_home
print_projects_home

set_gitlab_home
print_gitlab_home

set_variable SOURCE_HOME ${GITLAB_HOME}/source
print_variable SOURCE_HOME

set_workspace ${PROJECTS_HOME}/workspace
print_workspace

set_venv_home
print_venv_home

set_application_code_home
print_application_code_home

set_my_scripts_home
print_my_scripts_home

set_my_resources_home $WORKSPACE/resources
print_my_resources_home

set_test_source_file
print_test_source_file

# --------------------- #
# Verifying Environment #
# --------------------- #

print_line

DIRECTORIES_TO_CHECK=($BIG_BRAIN_HOME $PROJECTS_HOME $WORKSPACE $VENV_HOME $APPLICATION_CODE_HOME $MY_SCRIPTS_HOME $MY_RESOURCES_HOME)
for d in ${DIRECTORIES_TO_CHECK[@]}; do
  check_for_directory $d 
  RC=$?
  if [[ $RC -lt 0 ]]; then
    exit
  fi
done

FILES_TO_CHECK=($TEST_SOURCE_FILE)
for f in ${FILES_TO_CHECK[@]}; do
  check_for_file $f
  RC=$?
  if [[ $RC -lt 0 ]]; then
    exit
  fi
done

# ----------- #
# Git Section #
# ----------- #

print_line
echo "${INFO} Moving to ${SOURCE_HOME}"
cd ${SOURCE_HOME}
echo "${INFO}   Done"
print_current_directory

print_line
# echo "${INFO} Getting Latest source code" 
# git fetch
# git checkout develop
# git pull
# echo "${INFO}   Done."

# print_line
# echo "${INFO} Overriding develop code with feature code"
# git checkout feature/$1
# echo "${INFO}   Done."

# ------------ #
# Setup Python #
# ------------ #
# print_line
# echo "${INFO} Creating Python Virtual Environment"
# venv_create ${VENV_HOME}
# echo "${INFO}   Done."

echo "${INFO} Activating Python Virtual Environment"
venv_activate ${VENV_HOME}
echo "${INFO}   Done."

# echo "${INFO} Copying requirements"
# cp ${APPLICATION_CODE_HOME}/requirements.txt ${VENV_HOME}
# echo "${INFO}   Done."

# echo "${INFO} Installing packages via requirements.txt"
# venv ${VENV_HOME}
# echo "${INFO}   Done."

print_line
print_current_directory

# print_line
# echo "${INFO} Uploading latest test.csv file"
# cp ${TEST_SOURCE_FILE} ${WORKSPACE}/test.csv
# check_for_file ${WORKSPACE}/test.csv
# cat ${WORKSPACE}/test.csv
# exit
