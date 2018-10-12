#!/bin/bash 
set -e
if [ $MYSQL_MASTER ];
  then 
    cp /git-mysql/mysql-master.cnf /etc/mysq/my.cnf 
fi
if [ $MYSQL_SLAVE ]; 
  then 
   cp /git-mysql/mysql-master.cnf /etc/mysq/my.cnf 
fi 
