#!/bin/bash

source commands-environment-variables
source commands-print

print_double_line
set_tools_home
print_variable TOOLS_HOME
cd ${TOOLS_HOME}

print_line
source yaml-reader.sh

CONFIGURATION_YAML=${TOOLS_HOME}/configuration.yaml
print_variable CONFIGURATION_YAML

print_line
load_file configuration.yaml

MY_ERROR=1
for s in "${service_sbt[@]}"; do
  cd /usr/local/src/$s
  git status $s |
    while IFS= read -r line
    do
      if [[ "$line" != "On branch develop" ]] && 
         [[ "$line" != "Your branch is up to date with 'origin/develop'." ]] &&
         [[ "$line" != "nothing to commit, working tree clean" ]] &&
         [[ "$line" != "" ]]; then
        MY_ERROR = -1
        echo ${ERROR} $line
      fi
    done
done

if [[ $MY_ERROR -lt 0 ]]; then
  exit -1
fi
