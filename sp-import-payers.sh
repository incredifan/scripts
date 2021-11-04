#!/bin/zsh

source commands-environment-variables
source commands-import
source commands-print
source commands-python
source set-colors

print_double_line
echo ${INFO} Setting Import Work Home ...
set_env_var_import_work_home
echo "${INFO} Import Work Home:"
echo "${INFO}   $IMPORT_WORK_HOME"
echo "${INFO} Done"

print_line
echo "${INFO} Making workspace directory..."
mkdir ${IMPORT_WORK_HOME}
echo "${INFO} Done"

print_line
echo "${INFO} Changing directories ..."
cd ${IMPORT_WORK_HOME}
echo "${INFO} Current Directory:"
echo "${INFO}   $PWD"

export VENV_HOME="venv-import-work"
print_line
echo "${INFO} Creating Python Environment"
create_virtual_env ${VENV_HOME}
echo "${INFO} Done"

print_line
echo "${INFO} Installing Packaqes"
venv_install_requirements ${IMPORT_WORK_HOME} ${VENV_HOME}
