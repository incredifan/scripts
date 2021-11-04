#!/bin/sh

source commands-colors
source commands-docker
source commands-postgres
source commands-print
source commands-redis

# Prerequisite: Docker
print_line
echo "${INFO} Starting Docker"
docker_start

# Prerequisite: Redis
print_line
echo ${INFO} Starting Redis
redis_start

# Flush Redis
print_line
echo ${INFO} Flushing Redis
redis_flush

# Step: Drop Database: Tableau
print_line
echo ${INFO} Dropping Database 'tableau'
pg_drop_db_tableau

# Step: Drop Database: Tableau Test
print_line
echo ${INFO} Dropping Database 'tableautest'
pg_drop_db_tableautest

# Step: Create Database: Tableautest
print_line
echo "${INFO} Creating new database 'tableautest"
pg_create_db_tableautest


# Step: Create empty tableau database
print_line
echo "${INFO} Creating new database 'tableau'"
pg_create_db_tableau
