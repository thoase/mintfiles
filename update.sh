#/bin/bash

sudo apt-get update
sudo apt-get upgrade


if [ -f "info.sh" ]
then
	./info.sh
fi 

exit

#
# Only for SSD-disks
#
if [ -f "trim.sh" ]
then
	./trim.sh
fi

