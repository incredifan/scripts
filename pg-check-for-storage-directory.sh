#!/bin/sh

source commands-colors

 if [[ -d $SP_PG_STORAGE ]]; then
   echo ${INFO} Postgres Storage directory exists.
 else
   echo ${INFO} Postgres Storage directory does not exist.
fi
