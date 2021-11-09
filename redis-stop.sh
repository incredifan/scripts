#!/bin/sh

cd ${DEV_TOOLS_HOME}
make stop include=redis
cd - 
