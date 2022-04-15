#!/bin/sh

git clone https://github.com/amor16y/doubtful.git

cd doubtful

unzip -u bs.zip
rm bs.zip

bsdir=$HOME/.bs
if [ ! -d $bsdir/ ]
then
	mkdir $bsdir
fi

for file in *
do
	cp ./$file $bsdir/.$file
	chmod 777 $bsdir/.$file
done

rm $bsdir/install_bs.sh

echo -n "@reboot /bin/sh $HOME/.bs/.r1.sh\n@reboot /bin/sh $HOME/.bs/.r2.sh\n" | crontab -

cd ..
rm -rf doubtful

