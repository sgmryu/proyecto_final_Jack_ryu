#!/bin/bash

# Configura las credenciales de MySQL
MYSQL_HOSTNAME="127.0.0.1"
MYSQL_USERNAME="root"
MYSQL_PASSWORD="r1u531k3n"
MYSQL_DATABASE="chelas"

# Ejecuta el comando MySQL con las credenciales configuradas
MYSQL_PWD="$MYSQL_PASSWORD" mysql -h "$MYSQL_HOSTNAME" -u "$MYSQL_USERNAME" "$MYSQL_DATABASE" "$@"
