#!/usr/bin/env bash
docker run --name sqlbolt_container \
  -p 5432:5432 \
  -e POSTGRES_USER=postgres \
  -e POSTGRES_PASSWORD=password \
  -e POSTGRES_DB=movie_db \
  -v ./init/init.sql:/docker-entrypoint-initdb.d/init.sql \
  -d postgres

