#!/bin/bash
output="$(echo '\l' | psql -U postgres)"

# echo $output && grep "List" && echo 'Postgres is running' || echo 'Postgres is not running'

if [[ $output =~ "List of databases" ]]; then
    echo "Postgres is running"
    exit 0
else
    echo "Postgress is running"
    exit 1
fi