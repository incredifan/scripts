#!/bin/sh

PGPASSWORD=password psql -U postgres -h localhost $1
