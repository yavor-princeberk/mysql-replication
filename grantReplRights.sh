#!/bin/bash
mysql -u $MYSQL_USER --password=$MYSQL_PASSWORD -e "grant replication on *.* to '${REPL_USER}'@'${REPL_HOST}' identified by 'repl'
