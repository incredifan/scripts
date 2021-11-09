#!/bin/zsh

source set-colors
source commands-print
source commands-python

print_double_line
echo "${INFO} Setting Gitlab Home"
set_gitlab_home
echo "${INFO} Git Lab Home:"
echo "${INFO}   ${GITLAB_HOME}"
echo "${INFO} Done"

print_line
echo "${INFO} Set Environment Variable for Tutorial ..."
set_env_var_python_tutorial_env
echo "${INFO}   Python Tutorial Home:"
echo "${INFO}     ${PYTHON_TUTORIAL_HOME}"
echo "${INFO} Done"

print_line
echo "${INFO} Create venv for tutorial"
# create_venv_tutorial_env
echo "${INFO} Done"

print_line
echo "${INFO} Activate venv for tutorial"
activate_venv_tutorial
echo "${INFO} Done"

print_line
echo "${INFO} Install novas"
venv_tutorial_install_novas
echo "${INFO} Done"

print_line
echo "${INFO} Install 'requests' v2.6.0"
venv_tutorial_install_requests_260
echo "${INFO} Done"

print_line
echo "${INFO} Upgrade Requests to latest"
venv_tutorial_update_requests
echo "${INFO} Done"

print_line
echo "${INFO} Uninstall Requests"
venv_tutorial_uninstall_requests
echo "${INFO} Done"

print_line
echo "${INFO} Display information about requests"
venv_tutorial_show_requests
echo "${INFO} Done"

print_line
echo "${INFO} Display information about novas"
venv_tutorial_show_novas
echo "${INFO} Done"

print_line
echo "${INFO} List all installed packages in tutorial-venv"
venv_tutorial_list_installed_packages
echo "${INFO} Done"

print_line
echo "${INFO} Creating requirements file"
venv_tutorial_create_requirements_file
echo "${INFO} Done"

print_line
echo "${INFO} Install based on requirements file"
venv_tutorial_install_from_requirements_file
echo "${INFO} Done"
