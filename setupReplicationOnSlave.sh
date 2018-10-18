#!/bin/bash
mysql -u $MYSQL_SLAVE_USER --password=$MYSQL_SLAVE_PASSWORD -e \
"change master to master_host=\"${MYSQL_MASTER_HOST}\",  master_user=\"${MYSQL_SLAVE_REPL_USER}\", 
master_password=\"${MYSQL_SLAVE_REPL_PASSWORD}\", master_log_file=\"${MYSQL_MASTER_LOG_FILE}\",  
master_log_pos=${MYSQL_MASTER_LOG_POSITION};"
