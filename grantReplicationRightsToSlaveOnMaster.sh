#!/bin/bash
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD -e "grant replication slave on *.* to '${MYSQL_REPL_USER}'@'${MYSQL_SLAVE_HOST}' identified by '${MYSQL_REPL_PASSWORD}';"
