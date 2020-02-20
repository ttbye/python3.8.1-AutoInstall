#########################################################################
# File APP: install.sh
# Author: ttbye
#########################################################################
#!/usr/bin/env bash

yum -y install zlib-devel bzip2-devel openssl-devel ncurses-devel sqlite-devel readline-devel tk-devel gdbm-devel db4-devel libpcap-devel xz-devel &&
wget https://www.python.org/ftp/python/3.8.1/Python-3.8.1.tgz &&
mkdir -p /usr/local/python3.8 &&
tar -xvf Python-3.8.1.tgz &&
cd Python-3.8.1 &&
./configure --prefix=/usr/local/python3.8 &&
make &&
make install &&
ln -s /usr/local/python3/bin/python3.8 /usr/local/bin/python3 &&
ln -s /usr/local/python3/bin/pip3.8 /usr/local/bin/pip3 &&
pip3 install --upgrade pip &&
echo "installed successfullly!"
