#!/bin/bash 
set -e
if [ $MYSQL_MASTER ];
  then 
    cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
    rm -f /var/lib/mysql/ib*
    cd /var/lib/mysql/mysql
    rm -f innodb_* slave_*
    /etc/init.d/mysql start 
fi
if [ $MYSQL_SLAVE ]; 
  then 
   cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
   rm -f /var/lib/mysql/ib* 
fi 
