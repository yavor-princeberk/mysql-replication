#!/bin/bash
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD -e "create user  '${MYSQL_SLAVE_REPL_USER}'@'${MYSQL_SLAVE_HOST}' identified by '${MYSQL_SLAVE_REPL_PASSWORD}';"
