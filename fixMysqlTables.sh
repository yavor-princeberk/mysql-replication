#!/bin/bash
#Fix mysql system tables to work with replication

rm -f /var/lib/mysql/mysql/innodb_*
rm -f /var/lib/mysql/mysql/slave_*

mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "drop table innodb_table_stats";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "drop table innodb_index_stats";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "drop table slave_worker_info";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "drop table slave_relay_log_info";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "drop table slave_master_info";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "alter table innodb_table_stats discard tablespace";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "alter table innodb_index_stats discard tablespace";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "alter table slave_worker_info discard tablespace";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "alter table slave_relay_log_info discard tablespace";
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -e "alter table slave_master_info discard tablespace";


/etc/init.d/mysql restart
mysql -u $MYSQL_ROOT_USER --password=$MYSQL_ROOT_PASSWORD mysql -f < /git-mysql/fixStatTables.sql;
/etc/init.d/mysql restart 
