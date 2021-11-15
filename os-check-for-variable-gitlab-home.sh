#!/bin/sh

./check-for-variable-big-brain-home.sh
if [[ -z "$GITLAB_HOME" ]]; then
  echo "  GITLAB_HOME not set."
  exit -1
else
  echo "GITLAB_HOME:"
  echo "  $GITLAB_HOME"
fi
