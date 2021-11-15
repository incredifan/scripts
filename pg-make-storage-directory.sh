#!/bin/sh

if ! [[ -d $PG_STORAGE ]]; then
   command="mkdir $PG_STORAGE"
   echo "Command:"
   echo "  $command"
   `command`
fi

