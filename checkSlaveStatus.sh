#!/bin/bash
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD -e "show slave status\G" 
