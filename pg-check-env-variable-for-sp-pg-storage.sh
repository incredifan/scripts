#!/bin/sh

if [[ -z "$SP_PG_STORAGE" ]]; then
  echo "${INFO} SP_PG_STORAGE not set."
  exit -1
else
  echo "${INFO} SP_PG_STORAGE:"
  echo "${INFO}   $SP_PG_STORAGE"
fi
