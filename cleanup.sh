#!/bin/bash
STAMP=$(date --date="10 days ago" +%Y-%m-%d)
echo $STAMP
find ./ -type d -name "$STAMP" -a -prune -exec rm -rf {} \;
exit
