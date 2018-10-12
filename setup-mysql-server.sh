#!/bin/bash 
set -e
if [ $MYSQL_MASTER ];
  then
    cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf
    rm -f /var/lib/mysql/ib*
    rm -f /var/lib/mysql/mysql/innodb_* 
    rm -f /var/lib/mysql/mysql/slave_*
    /etc/init.d/mysql start
    mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql < /git-mysql/fixStatTables.sql
fi
if [ $MYSQL_SLAVE ];
  then
   cp /git-mysql/mysql-slave.cnf /etc/mysql/my.cnf
   cat /etc/mysql/my.cnf | grep 'server-id' | sed -E -e "s/[0-9]$/${MYSQL_SLAVE}/g" > /etc/mysql/my1.cnf
   mv /etc/mysql/my1.cnf /etc/mysql/my.cnf
   rm -f /var/lib/mysql/ib*
    rm -f /var/lib/mysql/mysql/innodb_* 
    rm -f /var/lib/mysql/mysql/slave_*
   /etc/init.d/mysql start
   mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql < /git-mysql/fixStatTables.sql
fi
