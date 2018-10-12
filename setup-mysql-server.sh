#!/bin/bash 
set -e
if [ $MYSQL_MASTER ];
  then 
    cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
    rm -f /var/lib/mysql/ib*
fi
if [ $MYSQL_SLAVE ]; 
  then 
   cp /git-mysql/mysql-master.cnf /etc/mysql/my.cnf 
   rm -f /var/lib/mysql/ib* 
   export 
   exec /git-mysql/insertUserIntoMaster.sh 
fi 
