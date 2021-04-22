#!/bin/sh
# Recreates database template.
docker run --rm guacamole/guacamole /opt/guacamole/bin/initdb.sh --mysql > ./docker-entrypoint-initdb.d/01-initdb.sql
chown $SUDO_USER ./docker-entrypoint-initdb.d/01-initdb.sql