#!/bin/sh

echo "Checking for environment variable SCRIPTS_HOME"
if [ -z "$SCRIPTS_HOME" ]; then
  echo "  SCRIPTS_HOME not set."
  echo "  Use set-scripts-home.sh to set it."
  exit -1
else 
  echo "  SCRIPTS_HOME:"
  echo "    $SCRIPTS_HOME"
fi
