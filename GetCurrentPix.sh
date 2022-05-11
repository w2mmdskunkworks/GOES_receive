SEARCHDIR='/home/pi/goes16/fd/fc/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_FDFC.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/m1/ch07_enhanced/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_M1CH07.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/m1/fc/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_M1FC.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/fd/ch15_enhanced/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_FDCH15.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/m2/ch07_enhanced/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
echo $FDFC_FILE
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_M2CH07.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/m2/fc'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR/$CURRDIR/$FDFC_FILE /var/www/html/current_M2FC.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/fd/ch09_enhanced/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR$CURRDIR/$FDFC_FILE /var/www/html/current_FDCH09.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/fd/ch08_enhanced/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR$CURRDIR/$FDFC_FILE /var/www/html/current_FDCH08.jpg
echo 'Done' $SEARCHDIR

SEARCHDIR='/home/pi/goes16/fd/ch02/'
CURRDIR=$(ls -l -t $SEARCHDIR | grep pi | head -n 1 | sed 's/^.*2021/2021/')
FDFC_FILE=$(ls -l -R -t $SEARCHDIR/$CURRDIR | grep GOES16 | sed 's/^.*GOES16/GOES16/' | sort -k 1.7 | tail -1)
cp $SEARCHDIR$CURRDIR/$FDFC_FILE /var/www/html/current_FDCH02.jpg
echo 'Done' $SEARCHDIR

