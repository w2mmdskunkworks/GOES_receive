#!/bin/bash
#CURRPIC=$(ls /home/pi/goes16/fd/fc -R -l | grep T16 | tail -1 | sed 's/^.*GOES16/GOES16/' )
#DATEDIR=$(ls /home/pi/goes16/fd/fc -R -l | grep T16 | tail -1 | sed 's/^.*_20/20/' )
TESTPIC=$(find /home/pi/goes16/fd/fc/* | grep T1[5-9] | sort | tail -1 )
#echo $CURRPIC
#echo $DATEDIR
echo $TESTPIC
cp -r $TESTPIC ~/CurrentFC_Picture.jpg
#cp -r /home/pi/goes16/fd/fc/$CURRPIC ~/CurrentFC_Pic.jpg
