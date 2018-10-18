#!/bin/bash
mysql -u $MYSQL_SLAVE_USER --password=$MYSQL_SLAVE_PASSWORD -e "change master to master_host='172.17.0.2', \ 
  master_user=\"$MYSQL_MASTER_REPL_USER\", master_password=\"$MYSQL_MASTER_REPL_PASSWORD\", master_log_file=\"$MASTER_LOG_FILE\", \
  master_log_pos=\"$MASTER_LOG_POS\";
