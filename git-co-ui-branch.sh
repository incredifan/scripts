source commands-colors
source commands-git
source commands-environment-variables
source commands-print

print_double_line
set_home
print__home

print_line
cd ${HOME}
print_current_directory

print_line
echo "${INFO} Fetching ..."
git fetch

print_line
echo "${INFO}  Checking out $1"
git checkout feature/$1

print_line
echo "${INFO} Pulling $1"
git pull

print_line
echo "${INFO} Done!"
print_double_line
