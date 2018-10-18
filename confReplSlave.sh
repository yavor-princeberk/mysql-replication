#!/bin/bash 
cat /git-mysql/mysql-slave.cnf | sed -r "s/server-id\s*\=\s*[0-9]*/server-id\t\t= ${SERVER_ID}/g" > /etc/mysql/my.cnf
