SEARCHDIR='/home/pi/goes16/fd/fc/'
echo 'SEARCHDIR=' $SEARCHDIR
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2019/2019/')
echo 'CURRDIR=' $CURRDIR
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
echo 'FDFC_FILE=' $FDFC_FILE
