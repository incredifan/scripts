#!/bin/sh

mongo --username $USERNAME --password $PASSWORD --authenticationDatabase admin --host localhost --port 27017 --eval $1
