#!/bin/bash
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD -e "create user  '${MYSQL_SLAVE_REPL_USER}'@'${MYSQL_SLAVE_HOST}' identified by '${MYSQL_SLAVE_REPL_PASSWORD}';"
