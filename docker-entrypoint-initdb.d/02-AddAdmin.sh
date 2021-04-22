#!/bin/sh
echo "UPDATE guacamole_entity SET name = '$GUACAMOLE_ADMIN' WHERE ENTITY_ID = 1" | mysql --user="$MYSQL_USER" --password="$MYSQL_PASSWORD" "$MYSQL_DATABASE"