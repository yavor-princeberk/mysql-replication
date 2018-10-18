#!/bin/bash
#Fix mysql system tables to work with replication
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -e "drop table innodb_table_stats";
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -e "drop table innodb_index_stats";
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -e "drop table slave_worker_info";
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -e "drop table slave_relay_log_info";
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -e "drop table slave_master_info";
/etc/init.d/mysql stop
rm -f /var/lib/mysq/mysql/innodb_table_stats.* 
rm -f /var/lib/mysq/mysql/innodb_index_stats.* 
rm -f /var/lib/mysq/mysql/slave_worker_info.*
rm -f /var/lib/mysq/mysql/slave_relay_log_info.*
rm -f /var/lib/mysq/mysql/slave_master_info.*
/etc/init.d/mysql start 
mysql -u $MYSQL_MASTER_USER --password=$MYSQL_MASTER_PASSWORD mysql -f < /git-mysql/fixStatTables.sql;
/etc/init.d/mysql restart 
