#!/bin/bash
/etc/init.d/mysql restart 2>&1 > /dev/null
if [ $? == 0 ];
then 
echo "Ok"
fi
