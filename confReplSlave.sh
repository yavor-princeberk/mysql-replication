#!/bin/bash 
cat mysql-slave.conf | sed 's/server_id*[0-9]$/$SLAVE_ID/g' > /etc/mysql/my.cnf 
