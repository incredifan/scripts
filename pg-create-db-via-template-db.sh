#!/bin/sh

PGPASSWORD=$PG_PASS psql -U $PG_USER -h $PG_HOST -c 'create database tableau template tableautest'

