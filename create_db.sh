#!/bin/bash
# Caution this script drops exising databases!

dbname=$1
dbuser=$2
dbpass=$3

if [ $# -ne 3 ]; then
    echo -e "Usage:\n$0 dbname dbuser dbpassword"
    exit 1
fi

echo "Enter DB root password below"

mysql -uroot -p -e "DROP DATABASE IF EXISTS $1; CREATE DATABASE $1; GRANT SELECT, INSERT, UPDATE, DELETE, CREATE, DROP, INDEX, ALTER, LOCK TABLES, CREATE TEMPORARY TABLES ON $1.* TO '$2'@'localhost' IDENTIFIED BY '$3'; FLUSH PRIVILEGES;"
