#!/bin/sh

. ./run-mongo-command.sh "printjson(db.adminCommand({listDatabases:1}))"
