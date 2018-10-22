#!/bin/bash 
/git-mysql/stopSlave.sh
/git-mysql/startSlave.sh 
if [ $? -eq 0 ] ;
then 
	echo  "Done"
	exit 0
else 
	echo "Error" 
	exit $? 
fi 
