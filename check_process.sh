#!/bin/bash
#Checks for  running status of last WX process
#If that process doesn't exist reboot
dt=`date '+%d/%m/%Y %H:%M:%S'`
#echo "$dt"

LAST_PROCESS=$(tail /home/pi/proc_process.log)
echo $LAST_PROCESS
ps -h  $LAST_PROCESS
RETURN_CODE=$?
echo $?
echo $RETURN_CODE
if [ "$RETURN_CODE" -eq "1" ]
then
	logger "GoesProc_reboot"
	sleep 1
	/home/pi/run_goesproc.sh
fi
