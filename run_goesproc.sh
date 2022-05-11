#!/bin/bash
goesproc -c /home/pi/goesproc-goesr.conf -m packet --subscribe tcp://127.0.0.1:5004 & echo $! >proc_process.log

