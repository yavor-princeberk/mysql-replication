#!/bin/bash 
set -e
if [ $MYSQL_MASTER ];
  then 
    cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
fi
if [ $MYSQL_SLAVE ]; 
  then 
   cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
fi 
