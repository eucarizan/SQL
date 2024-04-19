#!/usr/bin/env bash
docker exec sqlbolt_db sh -c "psql -d movie_db -U postgres -f solution/ex01/task01_01.sql"
