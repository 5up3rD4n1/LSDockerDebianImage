#!/bin/sh

cd /
git clone https://github.com/LabExperimental-SIUA/chdkptp.git
cd chdkptp
make
mkdir /usr/bin/chdkptp

ROUTE=$(pwd)
sed -i "6s|.*|CHDKPTP_DIR=$ROUTE|" chdkptp.sh
cp chdkptp.sh /usr/bin/chdkptp/chdkptp

ln -s /usr/bin/chdkptp/chdkptp /bin