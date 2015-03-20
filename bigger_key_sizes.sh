#!/bin/bash

apt-get source gpgv
cd gnupg-*/
grep -rl 4096 | xargs sed -i 's/4096/40960/g'
grep -rl 32768 | xargs sed -i 's/32768/10000000/g'
grep -rl 16384 | xargs sed -i 's/16384/40960/g'
./configure
make
#if you want to install uncomment the following line else cd to g10 and run the binary
#make install
echo "Done." 
