#!/bin/sh

PGPASSWORD=$PG_PASS psql -U $PG_USER -h $PG_HOST -d $PG_DATA -c 'refresh
materialized view <materialized_view>;'
select count(*) from <materialized_view>;
