#!/bin/bash
mysql -u $MYSQL_SLAVE_USER --password=$MYSQL_SLAVE_PASSWORD -e "grant replication on *.* 
  to \'${MYSQL_SLAVE_REPL_USER}\'@\'${MYSQL_SLAVE_HOST}\' identified by \'${MYSQL_SLAVE_REPL_PASSWORD}\';"
