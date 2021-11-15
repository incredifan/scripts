#!/bin/sh

if [[ -z "$GZ_FILE" ]]; then
  echo "  GZ_FILE not set."
  echo "  [$GZ_FILE]"
  exit -1
else
  echo "GZ_FILE:"
  echo "  $GZ_FILE"
fi
