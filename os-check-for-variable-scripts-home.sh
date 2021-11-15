#!/bin/sh

if [[ -z "$SCRIPTS_HOME" ]]; then
  echo "  SCRIPTS_HOME not set."
  exit -1
else
  echo "SCRIPTS_HOME:"
  echo "  $SCRIPTS_HOME"
fi
