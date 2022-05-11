#!/bin/bash

ls -l /home/pi/goes16/fd/fc | cut -c 38-48 | sort 


FILEDATE=$(ls -l /home/pi/goes16/fd/fc | cut -c 38-48 | sort | tail -2 | head -1)
echo 'File date is ' $FILEDATE

FILEDATE=$(ls -l /home/pi/goes16/fd/fc | cut -c 38-48 | sort | tail -3 | head -1)
echo 'File date is ' $FILEDATE

FILEDATE=$(ls -l /home/pi/goes16/fd/fc | cut -c 38-48 | sort | tail -1 | head -1)
echo 'File date is ' $FILEDATE

