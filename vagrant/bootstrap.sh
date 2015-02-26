#!/usr/bin/env bash

apt-get update
sudo apt-get install python-pip
sudo pip install selenium

wget http://sourceforge.net/projects/filebench/files/latest/download || exit 1
tar -xvf download
cd filebench*
./configure
make
sudo make install

sed  -e 's/runtime (e.g. run 60)/runtime 120/g' /usr/local/share/filebench/workloads/fileserver.f >/tmp/fileserver-noninteractive.f

filebench -f /tmp/fileserver-noninteractive.f

