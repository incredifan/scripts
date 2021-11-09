#!/bin/bash

source commands-postgres

PG_BASE_CMD=$(generate_pg_command)
echo PG_BASE_CMD:
echo "  $PG_BASE_CMD"
$($PG_BASE_CMD)

