#!/bin/bash
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD -e "grant replication on *.* 
  to \'${MYSQL_REPL_USER}\'@\'${MYSQL_SLAVE_HOST}\' identified by \'${MYSQL_REPL_PASSWORD}\';"
