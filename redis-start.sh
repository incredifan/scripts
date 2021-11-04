#!/bin/sh

cd ${DEV_TOOLS_HOME}
make start include=redis

while [[ -z "$(redis-cli ping 2> /dev/null)" ]]
  do printf ".";
  sleep 1
done

redis-cli flushall

cd - 
