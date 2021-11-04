
source ./commands-colors
source ./commands-environment-variables
source ./commands-print

function iterate() {
  MY_ERROR=1
  the_key=("$@")
  for s in "${the_key[@]}"; do
    echo "${SUCCESS} $s"
  done
}

print_double_line
echo "${INFO}  Entering test-yaml-file"
set_dev_tools_home

print_line
echo "${INFO} Loading yaml file"
source ${DEV_TOOLS_HOME}/yaml-reader.sh
load_file ${DEV_TOOLS_HOME}/configuration.yaml
echo "${INFO} Yaml file loaded ... Iterating ..."

print_line
echo "${INFO} Location"
iterate "${location[@]}"

print_line
echo "${INFO} Repository - URLs"
echo "${INFO}"
iterate "${repository_url[@]}"

print_line
echo "${INFO} Service - SBT"
echo "${INFO}"
iterate "${service_sbt[@]}"

print_line
echo "${INFO} Service - Kamon Enabled"
iterate "${service_kamonEnabled[@]}"

print_line
echo "${INFO} Service - Node"
iterate "${service_node[@]}"

print_line
echo "${INFO} Service - Go"
iterate "${service_go[@]}"

print_line
echo "${INFO} Client - Node"
iterate "${client_node[@]}"

print_line
echo "${INFO} Docker"
iterate "${docker[@]}"

print_line
echo "${INFO} Done!"
print_double_line
